SELECT SUM(c_acctbal)
FROM {{ ref("playing_with_tests") }}
HAVING SUM(c_acctbal) > 100000000
