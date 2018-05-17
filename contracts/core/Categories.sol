pragma solidity ^0.4.23;


contract Categories {

    struct Category {
        string name;
        uint parentCategory;
        bool visible;
    }

    Category[] public CategoriesList;

    function getCategoriesCount() public returns (uint) {
        return CategoriesList.length;
    }

}
