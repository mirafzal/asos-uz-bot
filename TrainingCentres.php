<?php

require_once("db_connect.php");

class TrainingCentres
{

    function getNames()
    {

        global $db;

        $res = array();

        $result = $db->query("SELECT * FROM `trainingcentres`");

        while ($arr = $result->fetch_assoc()) {

            if (isset($arr['name'])) {

                $res[] = $db->real_escape_string($arr['name']);

            }

        }

        return $res;

    }

    function getSubjects($name)
    {
        global $db;

        $res = array();

        $result = $db->query("SELECT * FROM `trainingcentres` WHERE name='$name'
");

        $arr = $result->fetch_assoc();

        if (isset($arr['subjects'])) {

            $subjects = $arr['subjects'];

            $res = explode(',', $subjects);

            for ($i = 0; $i < count($res); $i++) {
                $res[$i] = trim($res[$i]);
            }

        }

        return $res;
    }

    function getDistrict($name)
    {
        global $db;

        $res = "";

        $result = $db->query("SELECT * FROM `trainingcentres` WHERE name='$name'");

        $arr = $result->fetch_assoc();

        if (isset($arr['district'])) {

            $res= $arr['district'];

        }

        return $res;
    }

    function setInfo($name, $text) {
        global $db;

        $text = $db->real_escape_string($text);

        $db->query("update `trainingcentres` SET info = '{$text}' WHERE name = '$name'");
    }

    function getInfo($name) {
        global $db;

        $res = "";

        $result = $db->query("SELECT * FROM `trainingcentres` WHERE name='$name'");

        $arr = $result->fetch_assoc();

        if (isset($arr['info'])) {

            $res= $arr['info'];

        }

        return $res;
    }

}