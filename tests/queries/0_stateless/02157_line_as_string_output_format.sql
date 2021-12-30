SET output_format_write_statistics = 0;
SELECT number * 246 + 10 AS n, toDate('2000-01-01') + n AS d, range(n) AS arr, arrayStringConcat(arrayMap(x -> reinterpretAsString(x), arr)) AS s, (n, d) AS tuple FROM system.numbers LIMIT 2 FORMAT LineAsString;
