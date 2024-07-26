(
    SELECT
        'Low Salary' as category,
        (SELECT COUNT(*) from Accounts WHERE income < 20000) as accounts_count
)
UNION
(
    SELECT
        'Average Salary' as category,
        (SELECT COUNT(*) from Accounts WHERE income >= 20000 AND income <=50000) as accounts_count
)

UNION
(
    SELECT
        'High Salary' as category,
        (SELECT COUNT(*) from Accounts WHERE income > 50000) as accounts_count
)
