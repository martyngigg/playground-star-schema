/*

Enter custom T-SQL here that would run after SQL Server has started up.

*/
USE [master];
GO
RESTORE DATABASE [AdventureWorks2017]
FROM DISK = '/backup/AdventureWorks2017.bak'
WITH
    MOVE 'AdventureWorks2017' TO '/backup/AdventureWorks2017.mdf',
    MOVE 'AdventureWorks2017_log' TO '/backup/AdventureWorks2017_log.ldf',
    FILE = 1,
    NOUNLOAD,
    STATS = 5;
GO

GO
RESTORE DATABASE [AdventureWorksDW2017]
FROM DISK = '/backup/AdventureWorksDW2017.bak'
WITH
    MOVE 'AdventureWorksDW2017' TO '/backup/AdventureWorksDW2017.mdf',
    MOVE 'AdventureWorksDW2017_log' TO '/backup/AdventureWorksDW2017_log.ldf',
    FILE = 1,
    NOUNLOAD,
    STATS = 5;
GO
