pragma solidity ^0.4.23;

import "./core/DeveloperApplications.sol";
import "./core/Categories.sol";
import "./core/Owners.sol";


contract dAppInventory is DeveloperApplications, Categories, Owners {


    function addCategory(string _name, uint _parent, bool _visible) public onlyOwner {
        CategoriesList.push(Category(_name, _parent,_visible));
    }

    function dAppInventory() {
        CategoriesList.push(Category('root',0,false));
        CategoriesList.push(Category('Graphics',0,true));
        CategoriesList.push(Category('Games',0,true));
        CategoriesList.push(Category('Video',0,true));
        CategoriesList.push(Category('EBooks',0,true));
        CategoriesList.push(Category('Science',0,false));


        ApplicationsList.push(Application(
            msg.sender,
            "GDesign",
            1,
            ApplicationPlatform.Android,
            "http://browser.natk.io/dl/GDesign-2.8.22.win32.exe",
            "GDesign provides sophisticated tools for a graphic designer, photographer and illustrator.",
            "http://browser.natk.io/img/GDesign.png"
        ));

        ApplicationsList.push(Application(
            msg.sender,
            "KMplayer",
            4,
            ApplicationPlatform.Windows,
            "http://browser.natk.io/dl/KMplayer-2.2.6-win32.exe",
            "KMplayer media player is a free and open-source, portable and cross-platform media player.",
            "http://browser.natk.io/img/KMplayer.png"
        ));

        ApplicationsList.push(Application(
            msg.sender,
            "MazeRunner",
            7,
            ApplicationPlatform.Android,
            "http://browser.natk.io/dl/com.MazeRunner.mobile.android-3.1.1.apk",
            "MazeRunner is a arcade game.",
            "http://browser.natk.io/img/MazeRunner.png"
        ));


        ApplicationsList.push(Application(
            msg.sender,
            "FarAway",
            3,
            ApplicationPlatform.Windows,
            "http://browser.natk.io/dl/FarAway.pdf",
            "FarAway is a sci-fi book based on the distant future and the living condition of human race in other planets.",
            "http://browser.natk.io/img/FarAway.png"
        ));
    }

}