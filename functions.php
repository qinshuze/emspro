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

/**
 * 装载.env文件中的配置到环境变量
 * @return void
 */
function load_env()
{
    $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
    $dotenv->load();

    foreach ($_ENV as $k => $v) {
        putenv("$k=$v");
    }
}

/**
 * 获取环境变量
 * @param string $name
 * @param string $defaultValue
 * @return string
 */
function env(string $name, string $defaultValue = ""): string
{
    return $_ENV[$name] ?? $defaultValue;
}