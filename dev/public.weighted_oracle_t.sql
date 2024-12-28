CREATE FUNCTION public.weighted_oracle_task(key_value Varchar, points Integer) RETURN float 
AS BEGIN RETURN (
    CASE
        key_value
        WHEN 'select' THEN (points * 0.3)
        WHEN 'merge' THEN (points * 5)
        WHEN 'declare' THEN (points * 4)
        WHEN 'begin' THEN (points * 4)
        WHEN 'cursor' THEN (points * 25)
        WHEN 'loop' THEN (points * 25)
        WHEN 'rowid' THEN (points * 10)
        WHEN 'rownum' THEN (points * 5)
        WHEN 'oracle_join_syntax' THEN (points * 3)
        ELSE points
    END
)::float

END;