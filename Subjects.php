<?php

require_once("db_connect.php");

class Subjects
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

    function getAllSubjects() {
        global $db;

        $districts = [];

        $result = $db->query("SELECT * FROM `subjects`");

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

        if ($this->lang == 'uz') {
            $result = $db->query("SELECT * FROM `subjects` WHERE uz='$name'");
        } elseif ($this->lang == 'ru') {
            $result = $db->query("SELECT * FROM `subjects` WHERE ru='$name'");
        }

        $arr = $result->fetch_assoc();

        if (isset($arr["keyword"])) {

            $keyword = $arr["keyword"];

        }

        return $keyword;
    }
}