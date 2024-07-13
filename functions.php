<?php

/**
 * 判断字符串是否gbk
 * @param string $string
 * @return bool
 */
function is_gbk(string $string): bool
{
    return get_encoding($string) === 'GBK';
}

/**
 * 获取字符串字符集
 * @param string $string
 * @param string[] $encodings
 * @return string
 */
function get_encoding(string $string, array $encodings = ['GBK', 'UTF-8', 'ISO-8859-1', 'ASCII']): string
{
    return mb_detect_encoding($string, $encodings, true);
}

/**
 * 移除字符串中bom
 * @param string $str
 * @return string
 */
function str_remove_bom(string $str): string
{
    return trim($str, "\xEF\xBB\xBF");
}

/**
 * GBK转UTF8
 * @param string $string
 * @return string
 */
function gbk2utf8(string $string): string
{
    if (!is_gbk($string)) return $string;
    return iconv("GBK","UTF-8//IGNORE",trim(nl2br($string)," \n\t"));
}