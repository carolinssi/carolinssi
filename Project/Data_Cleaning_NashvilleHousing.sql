USE Portfolio
/* 
CLEANING DATA IN SQL QUERIES
*/

Select * 
FROM Portfolio..NashvilleHousing
----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1. Create a Backup Table of NashvilleHousing
DROP TABLE IF EXISTS Portfolio..NashvilleHousingBackup
Select * into Portfolio..NashvilleHousingBackup
From Portfolio..NashvilleHousing

l

----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 2. Standardize Date Format
Select SaleDate, Convert(Date, SaleDate)
FROM Portfolio..NashvilleHousing

-- But this isn't working
Update NashvilleHousing
Set SaleDate = Convert(Date, SaleDate)


-- using alter, add, update, set, etc.
Alter table NashvilleHousing
Add SaleDateConverted Date;

Update NashvilleHousing
Set SaleDateConverted = Convert(Date, SaleDate)

Alter table NashvilleHousing
Drop Column SaleDate

EXEC sp_rename 'Portfolio.dbo.NashvilleHousing.SaleDateConverted', 'SaleDate', 'COLUMN';
Select SaleDate
FROM Portfolio..NashvilleHousing -- successfully working


----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 3. Populate Property Address Data
Select a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress, b.PropertyAddress) as CopyOfPropertyAddress
FROM Portfolio..NashvilleHousing a
JOIN Portfolio..NashvilleHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID] <> b.[UniqueID]
Where a.PropertyAddress is null

Update a
Set PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress) 
FROM Portfolio..NashvilleHousing a
JOIN Portfolio..NashvilleHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID] <> b.[UniqueID]
Where a.PropertyAddress is null

Select * -- checking whether there still exits null in PropertyAddress
FROM Portfolio..NashvilleHousing
Where PropertyAddress is null




----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 4. Breaking out address into individual columns (address, city, state)
Select PropertyAddress
FROM Portfolio..NashvilleHousing

Select PropertyAddress
, Substring(PropertyAddress, 1, Charindex(',', PropertyAddress)) as Address
, Substring(PropertyAddress, 1, Charindex(',', PropertyAddress) -1 ) as Address
, Substring(PropertyAddress, Charindex(',', PropertyAddress) +1, len(PropertyAddress)) as Address
FROM Portfolio..NashvilleHousing

Alter table NashvilleHousing
Add PropertySplitAddress nvarchar(255);

Update NashvilleHousing
Set PropertySplitAddress = Substring(PropertyAddress, 1, Charindex(',', PropertyAddress) -1 )

Alter table NashvilleHousing
Add PropertySplitCity nvarchar(255);

Update NashvilleHousing
Set PropertySplitCity = Substring(PropertyAddress, Charindex(',', PropertyAddress) +1, len(PropertyAddress))

Select *
From Portfolio..NashvilleHousing





Select OwnerAddress
From Portfolio..NashvilleHousing

Select OwnerAddress
, PARSENAME(Replace(OwnerAddress, ',', '.') ,3)
, PARSENAME(Replace(OwnerAddress, ',', '.') ,2)
, PARSENAME(Replace(OwnerAddress, ',', '.') ,1)
From Portfolio..NashvilleHousing

Alter table NashvilleHousing
Add OwnerSplitAddress nvarchar(255);

Update NashvilleHousing
Set OwnerSplitAddress = PARSENAME(Replace(OwnerAddress, ',', '.') ,3)

Alter table NashvilleHousing
Add OwnerSplitCity nvarchar(255);

Update NashvilleHousing
Set OwnerSplitCity = PARSENAME(Replace(OwnerAddress, ',', '.') ,2)

Alter table NashvilleHousing
Add OwnerSplitState nvarchar(255);

Update NashvilleHousing
Set OwnerSplitState  = PARSENAME(Replace(OwnerAddress, ',', '.') ,1)

Select *
From Portfolio..NashvilleHousing






----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 5. Change Y and N to Yes and No in "Sold as Vacant" field

Select distinct(SoldAsVacant), count(SoldAsVacant)
From Portfolio..NashvilleHousing
Group by SoldAsVacant
order by 2



Select SoldAsVacant
, CASE When SoldAsVacant = 'Y' then 'YES'
	   When SoldAsVacant = 'N' then 'No'
	   ELSE SoldAsVacant
	   END
From Portfolio..NashvilleHousing


Update NashvilleHousing
Set SoldAsVacant = CASE When SoldAsVacant = 'Y' then 'YES'
	   When SoldAsVacant = 'N' then 'No'
	   ELSE SoldAsVacant
	   END

Select distinct(SoldAsVacant), count(SoldAsVacant)
From Portfolio..NashvilleHousing
Group by SoldAsVacant
order by 2



----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 6. Remove Duplicates
WITH RowNumCTE AS(
Select *,
		ROW_NUMBER() OVER (
		PARTITION BY ParcelID,
					 PropertyAddress,
					 SalePrice, 
					 SaleDate, 
					 LegalReference
					 ORDER By UniqueID
					 ) as row_num
From Portfolio..NashvilleHousing
)
Delete					-- to delete all the duplicate data
From RowNumCTE
Where row_num > 1
--Order By PropertyAddress



WITH RowNumCTE AS(
Select *,
		ROW_NUMBER() OVER (
		PARTITION BY ParcelID,
					 PropertyAddress,
					 SalePrice, 
					 SaleDate, 
					 LegalReference
					 ORDER By UniqueID
					 ) as row_num
From Portfolio..NashvilleHousing
)
Select *					-- checking whether there still exits a duplicate date
From RowNumCTE
Where row_num > 1
--Order By PropertyAddress


----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 7. Delete Unused Columns

Select *
From Portfolio..NashvilleHousing

Alter Table Portfolio..NashvilleHousing
Drop Column OwnerAddress, TaxDistrict, PropertyAddress


Alter Table Portfolio..NashvilleHousing
Drop Column SaleDate


















































































































