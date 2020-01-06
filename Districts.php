<?php

require_once("db_connect.php");

class Districts
{
    /**
     * @var string
     */
    private $lang;

    /**
     * Districts constructor.
     * @param string $lang
     */
    public function __construct($lang)
    {
        $this->lang = $lang;
    }

    /**
     * @param string $keyword
     * @return string
     */
    function getDistrict($keyword)
    {

        global $db;

        $district = "";

        $result = $db->query("SELECT * FROM `districts` WHERE keyword='$keyword'");

        $arr = $result->fetch_assoc();

        if (isset($arr[$this->lang])) {

            $district = $arr[$this->lang];

        }

        return $district;

    }

    function getAllDistricts() {
        global $db;

        $districts = [];

        $result = $db->query("SELECT * FROM `districts`");

        while ($arr = $result->fetch_assoc()) {
            if (isset($arr[$this->lang])) {

                $districts[] = $arr[$this->lang];

            }
        }

        return $districts;
    }

    function getKeywordByName($name) {
        global $db;

        $keyword = "";
        $result = "";

        $name = $db->real_escape_string($name);

        if ($this->lang == 'uz') {
            $result = $db->query("SELECT * FROM `districts` WHERE uz='$name'");
        } elseif ($this->lang == 'ru') {
            $result = $db->query("SELECT * FROM `districts` WHERE ru='$name'");
        }

        $arr = $result->fetch_assoc();

        if (isset($arr["keyword"])) {

            $keyword = $arr["keyword"];

        }

        return $keyword;
    }
}