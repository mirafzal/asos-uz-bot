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
}