-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for information_schema
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `information_schema`;

-- Dumping structure for table information_schema.ALL_PLUGINS
CREATE TEMPORARY TABLE IF NOT EXISTS `ALL_PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL,
  `PLUGIN_VERSION` varchar(20) NOT NULL,
  `PLUGIN_STATUS` varchar(16) NOT NULL,
  `PLUGIN_TYPE` varchar(80) NOT NULL,
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL,
  `PLUGIN_LIBRARY` varchar(64),
  `PLUGIN_LIBRARY_VERSION` varchar(20),
  `PLUGIN_AUTHOR` varchar(64),
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) NOT NULL,
  `LOAD_OPTION` varchar(64) NOT NULL,
  `PLUGIN_MATURITY` varchar(12) NOT NULL,
  `PLUGIN_AUTH_VERSION` varchar(80)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.APPLICABLE_ROLES
CREATE TEMPORARY TABLE IF NOT EXISTS `APPLICABLE_ROLES` (
  `GRANTEE` varchar(385) NOT NULL,
  `ROLE_NAME` varchar(128) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL,
  `IS_DEFAULT` varchar(3)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.CHARACTER_SETS
CREATE TEMPORARY TABLE IF NOT EXISTS `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL,
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL,
  `DESCRIPTION` varchar(60) NOT NULL,
  `MAXLEN` bigint(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.CHECK_CONSTRAINTS
CREATE TEMPORARY TABLE IF NOT EXISTS `CHECK_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `CONSTRAINT_NAME` varchar(64) NOT NULL,
  `LEVEL` varchar(6) NOT NULL,
  `CHECK_CLAUSE` longtext NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.CLIENT_STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `CLIENT_STATISTICS` (
  `CLIENT` varchar(64) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(21) NOT NULL,
  `CONCURRENT_CONNECTIONS` bigint(21) NOT NULL,
  `CONNECTED_TIME` bigint(21) NOT NULL,
  `BUSY_TIME` double NOT NULL,
  `CPU_TIME` double NOT NULL,
  `BYTES_RECEIVED` bigint(21) NOT NULL,
  `BYTES_SENT` bigint(21) NOT NULL,
  `BINLOG_BYTES_WRITTEN` bigint(21) NOT NULL,
  `ROWS_READ` bigint(21) NOT NULL,
  `ROWS_SENT` bigint(21) NOT NULL,
  `ROWS_DELETED` bigint(21) NOT NULL,
  `ROWS_INSERTED` bigint(21) NOT NULL,
  `ROWS_UPDATED` bigint(21) NOT NULL,
  `SELECT_COMMANDS` bigint(21) NOT NULL,
  `UPDATE_COMMANDS` bigint(21) NOT NULL,
  `OTHER_COMMANDS` bigint(21) NOT NULL,
  `COMMIT_TRANSACTIONS` bigint(21) NOT NULL,
  `ROLLBACK_TRANSACTIONS` bigint(21) NOT NULL,
  `DENIED_CONNECTIONS` bigint(21) NOT NULL,
  `LOST_CONNECTIONS` bigint(21) NOT NULL,
  `ACCESS_DENIED` bigint(21) NOT NULL,
  `EMPTY_QUERIES` bigint(21) NOT NULL,
  `TOTAL_SSL_CONNECTIONS` bigint(21) unsigned NOT NULL,
  `MAX_STATEMENT_TIME_EXCEEDED` bigint(21) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.COLLATIONS
CREATE TEMPORARY TABLE IF NOT EXISTS `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL,
  `CHARACTER_SET_NAME` varchar(32) NOT NULL,
  `ID` bigint(11) NOT NULL,
  `IS_DEFAULT` varchar(3) NOT NULL,
  `IS_COMPILED` varchar(3) NOT NULL,
  `SORTLEN` bigint(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.COLLATION_CHARACTER_SET_APPLICABILITY
CREATE TEMPORARY TABLE IF NOT EXISTS `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL,
  `CHARACTER_SET_NAME` varchar(32) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.COLUMNS
CREATE TEMPORARY TABLE IF NOT EXISTS `COLUMNS` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `COLUMN_NAME` varchar(64) NOT NULL,
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL,
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL,
  `DATA_TYPE` varchar(64) NOT NULL,
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned,
  `NUMERIC_PRECISION` bigint(21) unsigned,
  `NUMERIC_SCALE` bigint(21) unsigned,
  `DATETIME_PRECISION` bigint(21) unsigned,
  `CHARACTER_SET_NAME` varchar(32),
  `COLLATION_NAME` varchar(32),
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL,
  `EXTRA` varchar(80) NOT NULL,
  `PRIVILEGES` varchar(80) NOT NULL,
  `COLUMN_COMMENT` varchar(1024) NOT NULL,
  `IS_GENERATED` varchar(6) NOT NULL,
  `GENERATION_EXPRESSION` longtext
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.COLUMN_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(385) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `COLUMN_NAME` varchar(64) NOT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.ENABLED_ROLES
CREATE TEMPORARY TABLE IF NOT EXISTS `ENABLED_ROLES` (
  `ROLE_NAME` varchar(128)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.ENGINES
CREATE TEMPORARY TABLE IF NOT EXISTS `ENGINES` (
  `ENGINE` varchar(64) NOT NULL,
  `SUPPORT` varchar(8) NOT NULL,
  `COMMENT` varchar(160) NOT NULL,
  `TRANSACTIONS` varchar(3),
  `XA` varchar(3),
  `SAVEPOINTS` varchar(3)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.EVENTS
CREATE TEMPORARY TABLE IF NOT EXISTS `EVENTS` (
  `EVENT_CATALOG` varchar(64) NOT NULL,
  `EVENT_SCHEMA` varchar(64) NOT NULL,
  `EVENT_NAME` varchar(64) NOT NULL,
  `DEFINER` varchar(384) NOT NULL,
  `TIME_ZONE` varchar(64) NOT NULL,
  `EVENT_BODY` varchar(8) NOT NULL,
  `EVENT_DEFINITION` longtext NOT NULL,
  `EVENT_TYPE` varchar(9) NOT NULL,
  `EXECUTE_AT` datetime,
  `INTERVAL_VALUE` varchar(256),
  `INTERVAL_FIELD` varchar(18),
  `SQL_MODE` varchar(8192) NOT NULL,
  `STARTS` datetime,
  `ENDS` datetime,
  `STATUS` varchar(18) NOT NULL,
  `ON_COMPLETION` varchar(12) NOT NULL,
  `CREATED` datetime NOT NULL,
  `LAST_ALTERED` datetime NOT NULL,
  `LAST_EXECUTED` datetime,
  `EVENT_COMMENT` varchar(64) NOT NULL,
  `ORIGINATOR` bigint(10) NOT NULL,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL,
  `COLLATION_CONNECTION` varchar(32) NOT NULL,
  `DATABASE_COLLATION` varchar(32) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.FILES
CREATE TEMPORARY TABLE IF NOT EXISTS `FILES` (
  `FILE_ID` bigint(4) NOT NULL,
  `FILE_NAME` varchar(512),
  `FILE_TYPE` varchar(20) NOT NULL,
  `TABLESPACE_NAME` varchar(64),
  `TABLE_CATALOG` varchar(64) NOT NULL,
  `TABLE_SCHEMA` varchar(64),
  `TABLE_NAME` varchar(64),
  `LOGFILE_GROUP_NAME` varchar(64),
  `LOGFILE_GROUP_NUMBER` bigint(4),
  `ENGINE` varchar(64) NOT NULL,
  `FULLTEXT_KEYS` varchar(64),
  `DELETED_ROWS` bigint(4),
  `UPDATE_COUNT` bigint(4),
  `FREE_EXTENTS` bigint(4),
  `TOTAL_EXTENTS` bigint(4),
  `EXTENT_SIZE` bigint(4) NOT NULL,
  `INITIAL_SIZE` bigint(21) unsigned,
  `MAXIMUM_SIZE` bigint(21) unsigned,
  `AUTOEXTEND_SIZE` bigint(21) unsigned,
  `CREATION_TIME` datetime,
  `LAST_UPDATE_TIME` datetime,
  `LAST_ACCESS_TIME` datetime,
  `RECOVER_TIME` bigint(4),
  `TRANSACTION_COUNTER` bigint(4),
  `VERSION` bigint(21) unsigned,
  `ROW_FORMAT` varchar(10),
  `TABLE_ROWS` bigint(21) unsigned,
  `AVG_ROW_LENGTH` bigint(21) unsigned,
  `DATA_LENGTH` bigint(21) unsigned,
  `MAX_DATA_LENGTH` bigint(21) unsigned,
  `INDEX_LENGTH` bigint(21) unsigned,
  `DATA_FREE` bigint(21) unsigned,
  `CREATE_TIME` datetime,
  `UPDATE_TIME` datetime,
  `CHECK_TIME` datetime,
  `CHECKSUM` bigint(21) unsigned,
  `STATUS` varchar(20) NOT NULL,
  `EXTRA` varchar(255)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.GEOMETRY_COLUMNS
CREATE TEMPORARY TABLE IF NOT EXISTS `GEOMETRY_COLUMNS` (
  `F_TABLE_CATALOG` varchar(512) NOT NULL,
  `F_TABLE_SCHEMA` varchar(64) NOT NULL,
  `F_TABLE_NAME` varchar(64) NOT NULL,
  `F_GEOMETRY_COLUMN` varchar(64) NOT NULL,
  `G_TABLE_CATALOG` varchar(512) NOT NULL,
  `G_TABLE_SCHEMA` varchar(64) NOT NULL,
  `G_TABLE_NAME` varchar(64) NOT NULL,
  `G_GEOMETRY_COLUMN` varchar(64) NOT NULL,
  `STORAGE_TYPE` tinyint(2) NOT NULL,
  `GEOMETRY_TYPE` int(7) NOT NULL,
  `COORD_DIMENSION` tinyint(2) NOT NULL,
  `MAX_PPR` tinyint(2) NOT NULL,
  `SRID` smallint(5) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.GLOBAL_STATUS
CREATE TEMPORARY TABLE IF NOT EXISTS `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.GLOBAL_VARIABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INDEX_STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `INDEX_STATISTICS` (
  `TABLE_SCHEMA` varchar(192) NOT NULL,
  `TABLE_NAME` varchar(192) NOT NULL,
  `INDEX_NAME` varchar(192) NOT NULL,
  `ROWS_READ` bigint(21) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_BUFFER_PAGE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_PAGE` (
  `POOL_ID` int(11) unsigned NOT NULL,
  `BLOCK_ID` bigint(21) unsigned NOT NULL,
  `SPACE` int(11) unsigned NOT NULL,
  `PAGE_NUMBER` int(11) unsigned NOT NULL,
  `PAGE_TYPE` varchar(64),
  `FLUSH_TYPE` int(11) unsigned NOT NULL,
  `FIX_COUNT` int(11) unsigned NOT NULL,
  `IS_HASHED` int(1) NOT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL,
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL,
  `ACCESS_TIME` bigint(21) unsigned NOT NULL,
  `TABLE_NAME` varchar(1024),
  `INDEX_NAME` varchar(64),
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL,
  `DATA_SIZE` bigint(21) unsigned NOT NULL,
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL,
  `PAGE_STATE` enum('NOT_USED','MEMORY','REMOVE_HASH','FILE_PAGE') NOT NULL,
  `IO_FIX` enum('IO_NONE','IO_READ','IO_WRITE') NOT NULL,
  `IS_OLD` int(1) NOT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_BUFFER_PAGE_LRU
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_PAGE_LRU` (
  `POOL_ID` int(11) unsigned NOT NULL,
  `LRU_POSITION` bigint(21) unsigned NOT NULL,
  `SPACE` int(11) unsigned NOT NULL,
  `PAGE_NUMBER` int(11) unsigned NOT NULL,
  `PAGE_TYPE` varchar(64),
  `FLUSH_TYPE` int(11) unsigned NOT NULL,
  `FIX_COUNT` int(11) unsigned NOT NULL,
  `IS_HASHED` int(1) NOT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL,
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL,
  `ACCESS_TIME` bigint(21) unsigned NOT NULL,
  `TABLE_NAME` varchar(1024),
  `INDEX_NAME` varchar(64),
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL,
  `DATA_SIZE` bigint(21) unsigned NOT NULL,
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL,
  `COMPRESSED` int(1) NOT NULL,
  `IO_FIX` enum('IO_NONE','IO_READ','IO_WRITE') NOT NULL,
  `IS_OLD` int(1),
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_BUFFER_POOL_STATS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_POOL_STATS` (
  `POOL_ID` int(11) unsigned NOT NULL,
  `POOL_SIZE` bigint(21) unsigned NOT NULL,
  `FREE_BUFFERS` bigint(21) unsigned NOT NULL,
  `DATABASE_PAGES` bigint(21) unsigned NOT NULL,
  `OLD_DATABASE_PAGES` bigint(21) unsigned NOT NULL,
  `MODIFIED_DATABASE_PAGES` bigint(21) unsigned NOT NULL,
  `PENDING_DECOMPRESS` bigint(21) unsigned NOT NULL,
  `PENDING_READS` bigint(21) unsigned NOT NULL,
  `PENDING_FLUSH_LRU` bigint(21) unsigned NOT NULL,
  `PENDING_FLUSH_LIST` bigint(21) unsigned NOT NULL,
  `PAGES_MADE_YOUNG` bigint(21) unsigned NOT NULL,
  `PAGES_NOT_MADE_YOUNG` bigint(21) unsigned NOT NULL,
  `PAGES_MADE_YOUNG_RATE` float NOT NULL,
  `PAGES_MADE_NOT_YOUNG_RATE` float NOT NULL,
  `NUMBER_PAGES_READ` bigint(21) unsigned NOT NULL,
  `NUMBER_PAGES_CREATED` bigint(21) unsigned NOT NULL,
  `NUMBER_PAGES_WRITTEN` bigint(21) unsigned NOT NULL,
  `PAGES_READ_RATE` float NOT NULL,
  `PAGES_CREATE_RATE` float NOT NULL,
  `PAGES_WRITTEN_RATE` float NOT NULL,
  `NUMBER_PAGES_GET` bigint(21) unsigned NOT NULL,
  `HIT_RATE` bigint(21) unsigned NOT NULL,
  `YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL,
  `NOT_YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL,
  `NUMBER_PAGES_READ_AHEAD` bigint(21) unsigned NOT NULL,
  `NUMBER_READ_AHEAD_EVICTED` bigint(21) unsigned NOT NULL,
  `READ_AHEAD_RATE` float NOT NULL,
  `READ_AHEAD_EVICTED_RATE` float NOT NULL,
  `LRU_IO_TOTAL` bigint(21) unsigned NOT NULL,
  `LRU_IO_CURRENT` bigint(21) unsigned NOT NULL,
  `UNCOMPRESS_TOTAL` bigint(21) unsigned NOT NULL,
  `UNCOMPRESS_CURRENT` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_CMP
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP` (
  `page_size` int(5) NOT NULL,
  `compress_ops` int(11) NOT NULL,
  `compress_ops_ok` int(11) NOT NULL,
  `compress_time` int(11) NOT NULL,
  `uncompress_ops` int(11) NOT NULL,
  `uncompress_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_CMPMEM
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMPMEM` (
  `page_size` int(5) NOT NULL,
  `buffer_pool_instance` int(11) NOT NULL,
  `pages_used` int(11) NOT NULL,
  `pages_free` int(11) NOT NULL,
  `relocation_ops` bigint(21) NOT NULL,
  `relocation_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_CMPMEM_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMPMEM_RESET` (
  `page_size` int(5) NOT NULL,
  `buffer_pool_instance` int(11) NOT NULL,
  `pages_used` int(11) NOT NULL,
  `pages_free` int(11) NOT NULL,
  `relocation_ops` bigint(21) NOT NULL,
  `relocation_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_CMP_PER_INDEX
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_PER_INDEX` (
  `database_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `index_name` varchar(64) NOT NULL,
  `compress_ops` int(11) NOT NULL,
  `compress_ops_ok` int(11) NOT NULL,
  `compress_time` int(11) NOT NULL,
  `uncompress_ops` int(11) NOT NULL,
  `uncompress_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_CMP_PER_INDEX_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_PER_INDEX_RESET` (
  `database_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `index_name` varchar(64) NOT NULL,
  `compress_ops` int(11) NOT NULL,
  `compress_ops_ok` int(11) NOT NULL,
  `compress_time` int(11) NOT NULL,
  `uncompress_ops` int(11) NOT NULL,
  `uncompress_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_CMP_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_RESET` (
  `page_size` int(5) NOT NULL,
  `compress_ops` int(11) NOT NULL,
  `compress_ops_ok` int(11) NOT NULL,
  `compress_time` int(11) NOT NULL,
  `uncompress_ops` int(11) NOT NULL,
  `uncompress_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_FT_BEING_DELETED
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_BEING_DELETED` (
  `DOC_ID` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_FT_CONFIG
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_CONFIG` (
  `KEY` varchar(193) NOT NULL,
  `VALUE` varchar(193) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_FT_DEFAULT_STOPWORD
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_DEFAULT_STOPWORD` (
  `value` varchar(18) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_FT_DELETED
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_DELETED` (
  `DOC_ID` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_FT_INDEX_CACHE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_INDEX_CACHE` (
  `WORD` varchar(337) NOT NULL,
  `FIRST_DOC_ID` bigint(21) unsigned NOT NULL,
  `LAST_DOC_ID` bigint(21) unsigned NOT NULL,
  `DOC_COUNT` bigint(21) unsigned NOT NULL,
  `DOC_ID` bigint(21) unsigned NOT NULL,
  `POSITION` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_FT_INDEX_TABLE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_INDEX_TABLE` (
  `WORD` varchar(337) NOT NULL,
  `FIRST_DOC_ID` bigint(21) unsigned NOT NULL,
  `LAST_DOC_ID` bigint(21) unsigned NOT NULL,
  `DOC_COUNT` bigint(21) unsigned NOT NULL,
  `DOC_ID` bigint(21) unsigned NOT NULL,
  `POSITION` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_LOCKS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_LOCKS` (
  `lock_id` varchar(81) NOT NULL,
  `lock_trx_id` bigint(21) unsigned NOT NULL,
  `lock_mode` enum('S','S,GAP','X','X,GAP','IS','IS,GAP','IX','IX,GAP','AUTO_INC') NOT NULL,
  `lock_type` enum('RECORD','TABLE') NOT NULL,
  `lock_table` varchar(1024) NOT NULL,
  `lock_index` varchar(1024),
  `lock_space` int(11) unsigned,
  `lock_page` int(11) unsigned,
  `lock_rec` int(11) unsigned,
  `lock_data` varchar(8192)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_LOCK_WAITS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_LOCK_WAITS` (
  `requesting_trx_id` bigint(21) unsigned NOT NULL,
  `requested_lock_id` varchar(81) NOT NULL,
  `blocking_trx_id` bigint(21) unsigned NOT NULL,
  `blocking_lock_id` varchar(81) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_METRICS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_METRICS` (
  `NAME` varchar(193) NOT NULL,
  `SUBSYSTEM` varchar(193) NOT NULL,
  `COUNT` bigint(21) NOT NULL,
  `MAX_COUNT` bigint(21),
  `MIN_COUNT` bigint(21),
  `AVG_COUNT` float,
  `COUNT_RESET` bigint(21) NOT NULL,
  `MAX_COUNT_RESET` bigint(21),
  `MIN_COUNT_RESET` bigint(21),
  `AVG_COUNT_RESET` float,
  `TIME_ENABLED` datetime,
  `TIME_DISABLED` datetime,
  `TIME_ELAPSED` bigint(21),
  `TIME_RESET` datetime,
  `ENABLED` int(1) NOT NULL,
  `TYPE` enum('value','status_counter','set_owner','set_member','counter') NOT NULL,
  `COMMENT` varchar(193) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_COLUMNS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_COLUMNS` (
  `TABLE_ID` bigint(21) unsigned NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `POS` bigint(21) unsigned NOT NULL,
  `MTYPE` int(11) NOT NULL,
  `PRTYPE` int(11) NOT NULL,
  `LEN` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_FIELDS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FIELDS` (
  `INDEX_ID` bigint(21) unsigned NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `POS` int(11) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_FOREIGN
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FOREIGN` (
  `ID` varchar(193) NOT NULL,
  `FOR_NAME` varchar(193) NOT NULL,
  `REF_NAME` varchar(193) NOT NULL,
  `N_COLS` int(11) unsigned NOT NULL,
  `TYPE` int(11) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_FOREIGN_COLS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FOREIGN_COLS` (
  `ID` varchar(193) NOT NULL,
  `FOR_COL_NAME` varchar(64) NOT NULL,
  `REF_COL_NAME` varchar(64) NOT NULL,
  `POS` int(11) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_INDEXES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_INDEXES` (
  `INDEX_ID` bigint(21) unsigned NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `TABLE_ID` bigint(21) unsigned NOT NULL,
  `TYPE` int(11) NOT NULL,
  `N_FIELDS` int(11) NOT NULL,
  `PAGE_NO` int(11) NOT NULL,
  `SPACE` int(11) NOT NULL,
  `MERGE_THRESHOLD` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_TABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLES` (
  `TABLE_ID` bigint(21) unsigned NOT NULL,
  `NAME` varchar(655) NOT NULL,
  `FLAG` int(11) NOT NULL,
  `N_COLS` int(11) unsigned NOT NULL,
  `SPACE` int(11) unsigned NOT NULL,
  `ROW_FORMAT` enum('Redundant','Compact','Compressed','Dynamic'),
  `ZIP_PAGE_SIZE` int(11) unsigned NOT NULL,
  `SPACE_TYPE` enum('Single','System')
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_TABLESPACES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLESPACES` (
  `SPACE` int(11) unsigned NOT NULL,
  `NAME` varchar(655) NOT NULL,
  `FLAG` int(11) unsigned NOT NULL,
  `ROW_FORMAT` varchar(22),
  `PAGE_SIZE` int(11) unsigned NOT NULL,
  `FILENAME` varchar(512) NOT NULL,
  `FS_BLOCK_SIZE` int(11) unsigned NOT NULL,
  `FILE_SIZE` bigint(21) unsigned NOT NULL,
  `ALLOCATED_SIZE` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_TABLESTATS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLESTATS` (
  `TABLE_ID` bigint(21) unsigned NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `STATS_INITIALIZED` int(1) NOT NULL,
  `NUM_ROWS` bigint(21) unsigned NOT NULL,
  `CLUST_INDEX_SIZE` bigint(21) unsigned NOT NULL,
  `OTHER_INDEX_SIZE` bigint(21) unsigned NOT NULL,
  `MODIFIED_COUNTER` bigint(21) unsigned NOT NULL,
  `AUTOINC` bigint(21) unsigned NOT NULL,
  `REF_COUNT` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_SYS_VIRTUAL
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_VIRTUAL` (
  `TABLE_ID` bigint(21) unsigned NOT NULL,
  `POS` int(11) unsigned NOT NULL,
  `BASE_POS` int(11) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_TABLESPACES_ENCRYPTION
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TABLESPACES_ENCRYPTION` (
  `SPACE` int(11) unsigned NOT NULL,
  `NAME` varchar(655),
  `ENCRYPTION_SCHEME` int(11) unsigned NOT NULL,
  `KEYSERVER_REQUESTS` int(11) unsigned NOT NULL,
  `MIN_KEY_VERSION` int(11) unsigned NOT NULL,
  `CURRENT_KEY_VERSION` int(11) unsigned NOT NULL,
  `KEY_ROTATION_PAGE_NUMBER` bigint(21) unsigned,
  `KEY_ROTATION_MAX_PAGE_NUMBER` bigint(21) unsigned,
  `CURRENT_KEY_ID` int(11) unsigned NOT NULL,
  `ROTATING_OR_FLUSHING` int(1) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.INNODB_TRX
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TRX` (
  `trx_id` bigint(21) unsigned NOT NULL,
  `trx_state` varchar(13) NOT NULL,
  `trx_started` datetime NOT NULL,
  `trx_requested_lock_id` varchar(81),
  `trx_wait_started` datetime,
  `trx_weight` bigint(21) unsigned NOT NULL,
  `trx_mysql_thread_id` bigint(21) unsigned NOT NULL,
  `trx_query` varchar(1024),
  `trx_operation_state` varchar(64),
  `trx_tables_in_use` bigint(21) unsigned NOT NULL,
  `trx_tables_locked` bigint(21) unsigned NOT NULL,
  `trx_lock_structs` bigint(21) unsigned NOT NULL,
  `trx_lock_memory_bytes` bigint(21) unsigned NOT NULL,
  `trx_rows_locked` bigint(21) unsigned NOT NULL,
  `trx_rows_modified` bigint(21) unsigned NOT NULL,
  `trx_concurrency_tickets` bigint(21) unsigned NOT NULL,
  `trx_isolation_level` enum('READ UNCOMMITTED','READ COMMITTED','REPEATABLE READ','SERIALIZABLE') NOT NULL,
  `trx_unique_checks` int(1) NOT NULL,
  `trx_foreign_key_checks` int(1) NOT NULL,
  `trx_last_foreign_key_error` varchar(256),
  `trx_is_read_only` int(1) NOT NULL,
  `trx_autocommit_non_locking` int(1) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.KEYWORDS
CREATE TEMPORARY TABLE IF NOT EXISTS `KEYWORDS` (
  `WORD` varchar(64)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.KEY_CACHES
CREATE TEMPORARY TABLE IF NOT EXISTS `KEY_CACHES` (
  `KEY_CACHE_NAME` varchar(192) NOT NULL,
  `SEGMENTS` int(3) unsigned,
  `SEGMENT_NUMBER` int(3) unsigned,
  `FULL_SIZE` bigint(21) unsigned NOT NULL,
  `BLOCK_SIZE` bigint(21) unsigned NOT NULL,
  `USED_BLOCKS` bigint(21) unsigned NOT NULL,
  `UNUSED_BLOCKS` bigint(21) unsigned NOT NULL,
  `DIRTY_BLOCKS` bigint(21) unsigned NOT NULL,
  `READ_REQUESTS` bigint(21) unsigned NOT NULL,
  `READS` bigint(21) unsigned NOT NULL,
  `WRITE_REQUESTS` bigint(21) unsigned NOT NULL,
  `WRITES` bigint(21) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.KEY_COLUMN_USAGE
CREATE TEMPORARY TABLE IF NOT EXISTS `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `CONSTRAINT_NAME` varchar(64) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `COLUMN_NAME` varchar(64) NOT NULL,
  `ORDINAL_POSITION` bigint(10) NOT NULL,
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10),
  `REFERENCED_TABLE_SCHEMA` varchar(64),
  `REFERENCED_TABLE_NAME` varchar(64),
  `REFERENCED_COLUMN_NAME` varchar(64)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.OPTIMIZER_TRACE
CREATE TEMPORARY TABLE IF NOT EXISTS `OPTIMIZER_TRACE` (
  `QUERY` longtext NOT NULL,
  `TRACE` longtext NOT NULL,
  `MISSING_BYTES_BEYOND_MAX_MEM_SIZE` int(20) NOT NULL,
  `INSUFFICIENT_PRIVILEGES` tinyint(1) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.PARAMETERS
CREATE TEMPORARY TABLE IF NOT EXISTS `PARAMETERS` (
  `SPECIFIC_CATALOG` varchar(512) NOT NULL,
  `SPECIFIC_SCHEMA` varchar(64) NOT NULL,
  `SPECIFIC_NAME` varchar(64) NOT NULL,
  `ORDINAL_POSITION` int(21) NOT NULL,
  `PARAMETER_MODE` varchar(5),
  `PARAMETER_NAME` varchar(64),
  `DATA_TYPE` varchar(64) NOT NULL,
  `CHARACTER_MAXIMUM_LENGTH` int(21),
  `CHARACTER_OCTET_LENGTH` int(21),
  `NUMERIC_PRECISION` int(21),
  `NUMERIC_SCALE` int(21),
  `DATETIME_PRECISION` bigint(21) unsigned,
  `CHARACTER_SET_NAME` varchar(64),
  `COLLATION_NAME` varchar(64),
  `DTD_IDENTIFIER` longtext NOT NULL,
  `ROUTINE_TYPE` varchar(9) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.PARTITIONS
CREATE TEMPORARY TABLE IF NOT EXISTS `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `PARTITION_NAME` varchar(64),
  `SUBPARTITION_NAME` varchar(64),
  `PARTITION_ORDINAL_POSITION` bigint(21) unsigned,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned,
  `PARTITION_METHOD` varchar(18),
  `SUBPARTITION_METHOD` varchar(12),
  `PARTITION_EXPRESSION` longtext,
  `SUBPARTITION_EXPRESSION` longtext,
  `PARTITION_DESCRIPTION` longtext,
  `TABLE_ROWS` bigint(21) unsigned NOT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned NOT NULL,
  `DATA_LENGTH` bigint(21) unsigned NOT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned,
  `INDEX_LENGTH` bigint(21) unsigned NOT NULL,
  `DATA_FREE` bigint(21) unsigned NOT NULL,
  `CREATE_TIME` datetime,
  `UPDATE_TIME` datetime,
  `CHECK_TIME` datetime,
  `CHECKSUM` bigint(21) unsigned,
  `PARTITION_COMMENT` varchar(80) NOT NULL,
  `NODEGROUP` varchar(12) NOT NULL,
  `TABLESPACE_NAME` varchar(64)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.PLUGINS
CREATE TEMPORARY TABLE IF NOT EXISTS `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL,
  `PLUGIN_VERSION` varchar(20) NOT NULL,
  `PLUGIN_STATUS` varchar(16) NOT NULL,
  `PLUGIN_TYPE` varchar(80) NOT NULL,
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL,
  `PLUGIN_LIBRARY` varchar(64),
  `PLUGIN_LIBRARY_VERSION` varchar(20),
  `PLUGIN_AUTHOR` varchar(64),
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) NOT NULL,
  `LOAD_OPTION` varchar(64) NOT NULL,
  `PLUGIN_MATURITY` varchar(12) NOT NULL,
  `PLUGIN_AUTH_VERSION` varchar(80)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.PROCESSLIST
CREATE TEMPORARY TABLE IF NOT EXISTS `PROCESSLIST` (
  `ID` bigint(4) NOT NULL,
  `USER` varchar(128) NOT NULL,
  `HOST` varchar(64) NOT NULL,
  `DB` varchar(64),
  `COMMAND` varchar(16) NOT NULL,
  `TIME` int(7) NOT NULL,
  `STATE` varchar(64),
  `INFO` longtext,
  `TIME_MS` decimal(22,3) NOT NULL,
  `STAGE` tinyint(2) NOT NULL,
  `MAX_STAGE` tinyint(2) NOT NULL,
  `PROGRESS` decimal(7,3) NOT NULL,
  `MEMORY_USED` bigint(7) NOT NULL,
  `MAX_MEMORY_USED` bigint(7) NOT NULL,
  `EXAMINED_ROWS` int(7) NOT NULL,
  `QUERY_ID` bigint(4) NOT NULL,
  `INFO_BINARY` blob,
  `TID` bigint(4) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.PROFILING
CREATE TEMPORARY TABLE IF NOT EXISTS `PROFILING` (
  `QUERY_ID` int(20) NOT NULL,
  `SEQ` int(20) NOT NULL,
  `STATE` varchar(30) NOT NULL,
  `DURATION` decimal(9,6) NOT NULL,
  `CPU_USER` decimal(9,6),
  `CPU_SYSTEM` decimal(9,6),
  `CONTEXT_VOLUNTARY` int(20),
  `CONTEXT_INVOLUNTARY` int(20),
  `BLOCK_OPS_IN` int(20),
  `BLOCK_OPS_OUT` int(20),
  `MESSAGES_SENT` int(20),
  `MESSAGES_RECEIVED` int(20),
  `PAGE_FAULTS_MAJOR` int(20),
  `PAGE_FAULTS_MINOR` int(20),
  `SWAPS` int(20),
  `SOURCE_FUNCTION` varchar(30),
  `SOURCE_FILE` varchar(20),
  `SOURCE_LINE` int(20)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.REFERENTIAL_CONSTRAINTS
CREATE TEMPORARY TABLE IF NOT EXISTS `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `CONSTRAINT_NAME` varchar(64) NOT NULL,
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `UNIQUE_CONSTRAINT_NAME` varchar(64),
  `MATCH_OPTION` varchar(64) NOT NULL,
  `UPDATE_RULE` varchar(64) NOT NULL,
  `DELETE_RULE` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.ROUTINES
CREATE TEMPORARY TABLE IF NOT EXISTS `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL,
  `ROUTINE_CATALOG` varchar(512) NOT NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL,
  `ROUTINE_NAME` varchar(64) NOT NULL,
  `ROUTINE_TYPE` varchar(13) NOT NULL,
  `DATA_TYPE` varchar(64) NOT NULL,
  `CHARACTER_MAXIMUM_LENGTH` int(21),
  `CHARACTER_OCTET_LENGTH` int(21),
  `NUMERIC_PRECISION` int(21),
  `NUMERIC_SCALE` int(21),
  `DATETIME_PRECISION` bigint(21) unsigned,
  `CHARACTER_SET_NAME` varchar(64),
  `COLLATION_NAME` varchar(64),
  `DTD_IDENTIFIER` longtext,
  `ROUTINE_BODY` varchar(8) NOT NULL,
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64),
  `EXTERNAL_LANGUAGE` varchar(64),
  `PARAMETER_STYLE` varchar(8) NOT NULL,
  `IS_DETERMINISTIC` varchar(3) NOT NULL,
  `SQL_DATA_ACCESS` varchar(64) NOT NULL,
  `SQL_PATH` varchar(64),
  `SECURITY_TYPE` varchar(7) NOT NULL,
  `CREATED` datetime NOT NULL,
  `LAST_ALTERED` datetime NOT NULL,
  `SQL_MODE` varchar(8192) NOT NULL,
  `ROUTINE_COMMENT` longtext NOT NULL,
  `DEFINER` varchar(384) NOT NULL,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL,
  `COLLATION_CONNECTION` varchar(32) NOT NULL,
  `DATABASE_COLLATION` varchar(32) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.SCHEMATA
CREATE TEMPORARY TABLE IF NOT EXISTS `SCHEMATA` (
  `CATALOG_NAME` varchar(512) NOT NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL,
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL,
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL,
  `SQL_PATH` varchar(512),
  `SCHEMA_COMMENT` varchar(1024) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.SCHEMA_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(385) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.SESSION_STATUS
CREATE TEMPORARY TABLE IF NOT EXISTS `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.SESSION_VARIABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.SPATIAL_REF_SYS
CREATE TEMPORARY TABLE IF NOT EXISTS `SPATIAL_REF_SYS` (
  `SRID` smallint(5) NOT NULL,
  `AUTH_NAME` varchar(512) NOT NULL,
  `AUTH_SRID` int(5) NOT NULL,
  `SRTEXT` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.SQL_FUNCTIONS
CREATE TEMPORARY TABLE IF NOT EXISTS `SQL_FUNCTIONS` (
  `FUNCTION` varchar(64)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `STATISTICS` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `NON_UNIQUE` bigint(1) NOT NULL,
  `INDEX_SCHEMA` varchar(64) NOT NULL,
  `INDEX_NAME` varchar(64) NOT NULL,
  `SEQ_IN_INDEX` bigint(2) NOT NULL,
  `COLUMN_NAME` varchar(64) NOT NULL,
  `COLLATION` varchar(1),
  `CARDINALITY` bigint(21),
  `SUB_PART` bigint(3),
  `PACKED` varchar(10),
  `NULLABLE` varchar(3) NOT NULL,
  `INDEX_TYPE` varchar(16) NOT NULL,
  `COMMENT` varchar(16),
  `INDEX_COMMENT` varchar(1024) NOT NULL,
  `IGNORED` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.SYSTEM_VARIABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `SYSTEM_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `SESSION_VALUE` varchar(2048),
  `GLOBAL_VALUE` varchar(2048),
  `GLOBAL_VALUE_ORIGIN` varchar(64) NOT NULL,
  `DEFAULT_VALUE` varchar(2048),
  `VARIABLE_SCOPE` varchar(64) NOT NULL,
  `VARIABLE_TYPE` varchar(64) NOT NULL,
  `VARIABLE_COMMENT` varchar(2048) NOT NULL,
  `NUMERIC_MIN_VALUE` varchar(21),
  `NUMERIC_MAX_VALUE` varchar(21),
  `NUMERIC_BLOCK_SIZE` varchar(21),
  `ENUM_VALUE_LIST` longtext,
  `READ_ONLY` varchar(3) NOT NULL,
  `COMMAND_LINE_ARGUMENT` varchar(64),
  `GLOBAL_VALUE_PATH` varchar(2048)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.TABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLES` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `TABLE_TYPE` varchar(64) NOT NULL,
  `ENGINE` varchar(64),
  `VERSION` bigint(21) unsigned,
  `ROW_FORMAT` varchar(10),
  `TABLE_ROWS` bigint(21) unsigned,
  `AVG_ROW_LENGTH` bigint(21) unsigned,
  `DATA_LENGTH` bigint(21) unsigned,
  `MAX_DATA_LENGTH` bigint(21) unsigned,
  `INDEX_LENGTH` bigint(21) unsigned,
  `DATA_FREE` bigint(21) unsigned,
  `AUTO_INCREMENT` bigint(21) unsigned,
  `CREATE_TIME` datetime,
  `UPDATE_TIME` datetime,
  `CHECK_TIME` datetime,
  `TABLE_COLLATION` varchar(32),
  `CHECKSUM` bigint(21) unsigned,
  `CREATE_OPTIONS` varchar(2048),
  `TABLE_COMMENT` varchar(2048) NOT NULL,
  `MAX_INDEX_LENGTH` bigint(21) unsigned,
  `TEMPORARY` varchar(1)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.TABLESPACES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLESPACES` (
  `TABLESPACE_NAME` varchar(64) NOT NULL,
  `ENGINE` varchar(64) NOT NULL,
  `TABLESPACE_TYPE` varchar(64),
  `LOGFILE_GROUP_NAME` varchar(64),
  `EXTENT_SIZE` bigint(21) unsigned,
  `AUTOEXTEND_SIZE` bigint(21) unsigned,
  `MAXIMUM_SIZE` bigint(21) unsigned,
  `NODEGROUP_ID` bigint(21) unsigned,
  `TABLESPACE_COMMENT` varchar(2048)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.TABLE_CONSTRAINTS
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `CONSTRAINT_NAME` varchar(64) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `CONSTRAINT_TYPE` varchar(64) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.TABLE_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(385) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.TABLE_STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLE_STATISTICS` (
  `TABLE_SCHEMA` varchar(192) NOT NULL,
  `TABLE_NAME` varchar(192) NOT NULL,
  `ROWS_READ` bigint(21) NOT NULL,
  `ROWS_CHANGED` bigint(21) NOT NULL,
  `ROWS_CHANGED_X_INDEXES` bigint(21) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.THREAD_POOL_GROUPS
CREATE TEMPORARY TABLE IF NOT EXISTS `THREAD_POOL_GROUPS` (
  `GROUP_ID` int(6) NOT NULL,
  `CONNECTIONS` int(6) NOT NULL,
  `THREADS` int(6) NOT NULL,
  `ACTIVE_THREADS` int(6) NOT NULL,
  `STANDBY_THREADS` int(6) NOT NULL,
  `QUEUE_LENGTH` int(6) NOT NULL,
  `HAS_LISTENER` tinyint(1) NOT NULL,
  `IS_STALLED` tinyint(1) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.THREAD_POOL_QUEUES
CREATE TEMPORARY TABLE IF NOT EXISTS `THREAD_POOL_QUEUES` (
  `GROUP_ID` int(6) NOT NULL,
  `POSITION` int(6) NOT NULL,
  `PRIORITY` int(1) NOT NULL,
  `CONNECTION_ID` bigint(19) unsigned,
  `QUEUEING_TIME_MICROSECONDS` bigint(19) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.THREAD_POOL_STATS
CREATE TEMPORARY TABLE IF NOT EXISTS `THREAD_POOL_STATS` (
  `GROUP_ID` int(6) NOT NULL,
  `THREAD_CREATIONS` bigint(19) NOT NULL,
  `THREAD_CREATIONS_DUE_TO_STALL` bigint(19) NOT NULL,
  `WAKES` bigint(19) NOT NULL,
  `WAKES_DUE_TO_STALL` bigint(19) NOT NULL,
  `THROTTLES` bigint(19) NOT NULL,
  `STALLS` bigint(19) NOT NULL,
  `POLLS_BY_LISTENER` bigint(19) NOT NULL,
  `POLLS_BY_WORKER` bigint(19) NOT NULL,
  `DEQUEUES_BY_LISTENER` bigint(19) NOT NULL,
  `DEQUEUES_BY_WORKER` bigint(19) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.THREAD_POOL_WAITS
CREATE TEMPORARY TABLE IF NOT EXISTS `THREAD_POOL_WAITS` (
  `REASON` varchar(16) NOT NULL,
  `COUNT` bigint(19) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.TRIGGERS
CREATE TEMPORARY TABLE IF NOT EXISTS `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) NOT NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL,
  `TRIGGER_NAME` varchar(64) NOT NULL,
  `EVENT_MANIPULATION` varchar(6) NOT NULL,
  `EVENT_OBJECT_CATALOG` varchar(512) NOT NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL,
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL,
  `ACTION_ORDER` bigint(4) NOT NULL,
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL,
  `ACTION_TIMING` varchar(6) NOT NULL,
  `ACTION_REFERENCE_OLD_TABLE` varchar(64),
  `ACTION_REFERENCE_NEW_TABLE` varchar(64),
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL,
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL,
  `CREATED` datetime(2),
  `SQL_MODE` varchar(8192) NOT NULL,
  `DEFINER` varchar(384) NOT NULL,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL,
  `COLLATION_CONNECTION` varchar(32) NOT NULL,
  `DATABASE_COLLATION` varchar(32) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.USER_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `USER_PRIVILEGES` (
  `GRANTEE` varchar(385) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.USER_STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `USER_STATISTICS` (
  `USER` varchar(128) NOT NULL,
  `TOTAL_CONNECTIONS` int(11) NOT NULL,
  `CONCURRENT_CONNECTIONS` int(11) NOT NULL,
  `CONNECTED_TIME` int(11) NOT NULL,
  `BUSY_TIME` double NOT NULL,
  `CPU_TIME` double NOT NULL,
  `BYTES_RECEIVED` bigint(21) NOT NULL,
  `BYTES_SENT` bigint(21) NOT NULL,
  `BINLOG_BYTES_WRITTEN` bigint(21) NOT NULL,
  `ROWS_READ` bigint(21) NOT NULL,
  `ROWS_SENT` bigint(21) NOT NULL,
  `ROWS_DELETED` bigint(21) NOT NULL,
  `ROWS_INSERTED` bigint(21) NOT NULL,
  `ROWS_UPDATED` bigint(21) NOT NULL,
  `SELECT_COMMANDS` bigint(21) NOT NULL,
  `UPDATE_COMMANDS` bigint(21) NOT NULL,
  `OTHER_COMMANDS` bigint(21) NOT NULL,
  `COMMIT_TRANSACTIONS` bigint(21) NOT NULL,
  `ROLLBACK_TRANSACTIONS` bigint(21) NOT NULL,
  `DENIED_CONNECTIONS` bigint(21) NOT NULL,
  `LOST_CONNECTIONS` bigint(21) NOT NULL,
  `ACCESS_DENIED` bigint(21) NOT NULL,
  `EMPTY_QUERIES` bigint(21) NOT NULL,
  `TOTAL_SSL_CONNECTIONS` bigint(21) unsigned NOT NULL,
  `MAX_STATEMENT_TIME_EXCEEDED` bigint(21) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.user_variables
CREATE TEMPORARY TABLE IF NOT EXISTS `user_variables` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048),
  `VARIABLE_TYPE` varchar(64) NOT NULL,
  `CHARACTER_SET_NAME` varchar(32)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table information_schema.VIEWS
CREATE TEMPORARY TABLE IF NOT EXISTS `VIEWS` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL,
  `IS_UPDATABLE` varchar(3) NOT NULL,
  `DEFINER` varchar(384) NOT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL,
  `COLLATION_CONNECTION` varchar(32) NOT NULL,
  `ALGORITHM` varchar(10) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=0;

-- Data exporting was unselected.


-- Dumping database structure for mysql
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `mysql`;

-- Dumping structure for table mysql.columns_priv
CREATE TABLE IF NOT EXISTS `columns_priv` (
  `Host` char(255) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `User` char(128) NOT NULL DEFAULT '',
  `Table_name` char(64) NOT NULL DEFAULT '',
  `Column_name` char(64) NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Column privileges';

-- Data exporting was unselected.

-- Dumping structure for table mysql.column_stats
CREATE TABLE IF NOT EXISTS `column_stats` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `column_name` varchar(64) NOT NULL,
  `min_value` varbinary(255) DEFAULT NULL,
  `max_value` varbinary(255) DEFAULT NULL,
  `nulls_ratio` decimal(12,4) DEFAULT NULL,
  `avg_length` decimal(12,4) DEFAULT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  `hist_size` tinyint(3) unsigned DEFAULT NULL,
  `hist_type` enum('SINGLE_PREC_HB','DOUBLE_PREC_HB') DEFAULT NULL,
  `histogram` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Columns';

-- Data exporting was unselected.

-- Dumping structure for table mysql.db
CREATE TABLE IF NOT EXISTS `db` (
  `Host` char(255) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `User` char(128) NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_history_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Database privileges';

-- Data exporting was unselected.

-- Dumping structure for table mysql.event
CREATE TABLE IF NOT EXISTS `event` (
  `db` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` varchar(384) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  PRIMARY KEY (`db`,`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Events';

-- Data exporting was unselected.

-- Dumping structure for table mysql.func
CREATE TABLE IF NOT EXISTS `func` (
  `name` char(64) NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT 0,
  `dl` char(128) NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User defined functions';

-- Data exporting was unselected.

-- Dumping structure for table mysql.general_log
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='General log';

-- Data exporting was unselected.

-- Dumping structure for table mysql.global_priv
CREATE TABLE IF NOT EXISTS `global_priv` (
  `Host` char(255) NOT NULL DEFAULT '',
  `User` char(128) NOT NULL DEFAULT '',
  `Priv` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`Priv`)),
  PRIMARY KEY (`Host`,`User`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Users and global privileges';

-- Data exporting was unselected.

-- Dumping structure for table mysql.gtid_slave_pos
CREATE TABLE IF NOT EXISTS `gtid_slave_pos` (
  `domain_id` int(10) unsigned NOT NULL,
  `sub_id` bigint(20) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `seq_no` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`domain_id`,`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Replication slave GTID position';

-- Data exporting was unselected.

-- Dumping structure for table mysql.help_category
CREATE TABLE IF NOT EXISTS `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help categories';

-- Data exporting was unselected.

-- Dumping structure for table mysql.help_keyword
CREATE TABLE IF NOT EXISTS `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help keywords';

-- Data exporting was unselected.

-- Dumping structure for table mysql.help_relation
CREATE TABLE IF NOT EXISTS `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`),
  KEY `help_topic_id` (`help_topic_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='keyword-topic relation';

-- Data exporting was unselected.

-- Dumping structure for table mysql.help_topic
CREATE TABLE IF NOT EXISTS `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help topics';

-- Data exporting was unselected.

-- Dumping structure for table mysql.index_stats
CREATE TABLE IF NOT EXISTS `index_stats` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `index_name` varchar(64) NOT NULL,
  `prefix_arity` int(11) unsigned NOT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`index_name`,`prefix_arity`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Indexes';

-- Data exporting was unselected.

-- Dumping structure for table mysql.innodb_index_stats
CREATE TABLE IF NOT EXISTS `innodb_index_stats` (
  `database_name` varchar(64) NOT NULL,
  `table_name` varchar(199) NOT NULL,
  `index_name` varchar(64) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stat_name` varchar(64) NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;

-- Data exporting was unselected.

-- Dumping structure for table mysql.innodb_table_stats
CREATE TABLE IF NOT EXISTS `innodb_table_stats` (
  `database_name` varchar(64) NOT NULL,
  `table_name` varchar(199) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;

-- Data exporting was unselected.

-- Dumping structure for table mysql.plugin
CREATE TABLE IF NOT EXISTS `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL plugins';

-- Data exporting was unselected.

-- Dumping structure for table mysql.proc
CREATE TABLE IF NOT EXISTS `proc` (
  `db` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` varchar(384) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  `aggregate` enum('NONE','GROUP') NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Stored Procedures';

-- Data exporting was unselected.

-- Dumping structure for table mysql.procs_priv
CREATE TABLE IF NOT EXISTS `procs_priv` (
  `Host` char(255) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `User` char(128) NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') NOT NULL,
  `Grantor` varchar(384) NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Procedure privileges';

-- Data exporting was unselected.

-- Dumping structure for table mysql.proxies_priv
CREATE TABLE IF NOT EXISTS `proxies_priv` (
  `Host` char(255) NOT NULL DEFAULT '',
  `User` char(128) NOT NULL DEFAULT '',
  `Proxied_host` char(255) NOT NULL DEFAULT '',
  `Proxied_user` char(128) NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT 0,
  `Grantor` varchar(384) NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User proxy privileges';

-- Data exporting was unselected.

-- Dumping structure for table mysql.roles_mapping
CREATE TABLE IF NOT EXISTS `roles_mapping` (
  `Host` char(255) NOT NULL DEFAULT '',
  `User` char(128) NOT NULL DEFAULT '',
  `Role` char(128) NOT NULL DEFAULT '',
  `Admin_option` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  UNIQUE KEY `Host` (`Host`,`User`,`Role`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Granted roles';

-- Data exporting was unselected.

-- Dumping structure for table mysql.servers
CREATE TABLE IF NOT EXISTS `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` varchar(2048) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(128) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT 0,
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` varchar(512) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL Foreign Servers table';

-- Data exporting was unselected.

-- Dumping structure for table mysql.slow_log
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `rows_affected` int(11) NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Slow log';

-- Data exporting was unselected.

-- Dumping structure for table mysql.tables_priv
CREATE TABLE IF NOT EXISTS `tables_priv` (
  `Host` char(255) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `User` char(128) NOT NULL DEFAULT '',
  `Table_name` char(64) NOT NULL DEFAULT '',
  `Grantor` varchar(384) NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger','Delete versioning rows') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Table privileges';

-- Data exporting was unselected.

-- Dumping structure for table mysql.table_stats
CREATE TABLE IF NOT EXISTS `table_stats` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `cardinality` bigint(21) unsigned DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Tables';

-- Data exporting was unselected.

-- Dumping structure for table mysql.time_zone
CREATE TABLE IF NOT EXISTS `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zones';

-- Data exporting was unselected.

-- Dumping structure for table mysql.time_zone_leap_second
CREATE TABLE IF NOT EXISTS `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Leap seconds information for time zones';

-- Data exporting was unselected.

-- Dumping structure for table mysql.time_zone_name
CREATE TABLE IF NOT EXISTS `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone names';

-- Data exporting was unselected.

-- Dumping structure for table mysql.time_zone_transition
CREATE TABLE IF NOT EXISTS `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transitions';

-- Data exporting was unselected.

-- Dumping structure for table mysql.time_zone_transition_type
CREATE TABLE IF NOT EXISTS `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT 0,
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transition types';

-- Data exporting was unselected.

-- Dumping structure for table mysql.transaction_registry
CREATE TABLE IF NOT EXISTS `transaction_registry` (
  `transaction_id` bigint(20) unsigned NOT NULL,
  `commit_id` bigint(20) unsigned NOT NULL,
  `begin_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `commit_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `isolation_level` enum('READ-UNCOMMITTED','READ-COMMITTED','REPEATABLE-READ','SERIALIZABLE') NOT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `commit_id` (`commit_id`),
  KEY `begin_timestamp` (`begin_timestamp`),
  KEY `commit_timestamp` (`commit_timestamp`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;

-- Data exporting was unselected.

-- Dumping structure for view mysql.user
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user` (
	`Host` CHAR(255) NOT NULL COLLATE 'utf8mb3_bin',
	`User` CHAR(128) NOT NULL COLLATE 'utf8mb3_bin',
	`Password` LONGTEXT NULL COLLATE 'utf8mb4_bin',
	`Select_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Insert_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Update_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Delete_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Drop_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Reload_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Shutdown_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Process_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`File_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Grant_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`References_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Index_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Alter_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Show_db_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Super_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_tmp_table_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Lock_tables_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Execute_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Repl_slave_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Repl_client_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_view_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Show_view_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_routine_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Alter_routine_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_user_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Event_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Trigger_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_tablespace_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Delete_history_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`ssl_type` VARCHAR(9) NULL COLLATE 'latin1_swedish_ci',
	`ssl_cipher` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`x509_issuer` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`x509_subject` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`max_questions` BIGINT(20) UNSIGNED NOT NULL,
	`max_updates` BIGINT(20) UNSIGNED NOT NULL,
	`max_connections` BIGINT(20) UNSIGNED NOT NULL,
	`max_user_connections` BIGINT(21) NOT NULL,
	`plugin` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`authentication_string` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`password_expired` VARCHAR(1) NOT NULL COLLATE 'latin1_swedish_ci',
	`is_role` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`default_role` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`max_statement_time` DECIMAL(12,6) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view mysql.user
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `user` AS SELECT
  Host,
  User,
  IF(JSON_VALUE(Priv, '$.plugin') IN ('mysql_native_password', 'mysql_old_password'), IFNULL(JSON_VALUE(Priv, '$.authentication_string'), ''), '') AS Password,
  IF(JSON_VALUE(Priv, '$.access') &         1, 'Y', 'N') AS Select_priv,
  IF(JSON_VALUE(Priv, '$.access') &         2, 'Y', 'N') AS Insert_priv,
  IF(JSON_VALUE(Priv, '$.access') &         4, 'Y', 'N') AS Update_priv,
  IF(JSON_VALUE(Priv, '$.access') &         8, 'Y', 'N') AS Delete_priv,
  IF(JSON_VALUE(Priv, '$.access') &        16, 'Y', 'N') AS Create_priv,
  IF(JSON_VALUE(Priv, '$.access') &        32, 'Y', 'N') AS Drop_priv,
  IF(JSON_VALUE(Priv, '$.access') &        64, 'Y', 'N') AS Reload_priv,
  IF(JSON_VALUE(Priv, '$.access') &       128, 'Y', 'N') AS Shutdown_priv,
  IF(JSON_VALUE(Priv, '$.access') &       256, 'Y', 'N') AS Process_priv,
  IF(JSON_VALUE(Priv, '$.access') &       512, 'Y', 'N') AS File_priv,
  IF(JSON_VALUE(Priv, '$.access') &      1024, 'Y', 'N') AS Grant_priv,
  IF(JSON_VALUE(Priv, '$.access') &      2048, 'Y', 'N') AS References_priv,
  IF(JSON_VALUE(Priv, '$.access') &      4096, 'Y', 'N') AS Index_priv,
  IF(JSON_VALUE(Priv, '$.access') &      8192, 'Y', 'N') AS Alter_priv,
  IF(JSON_VALUE(Priv, '$.access') &     16384, 'Y', 'N') AS Show_db_priv,
  IF(JSON_VALUE(Priv, '$.access') &     32768, 'Y', 'N') AS Super_priv,
  IF(JSON_VALUE(Priv, '$.access') &     65536, 'Y', 'N') AS Create_tmp_table_priv,
  IF(JSON_VALUE(Priv, '$.access') &    131072, 'Y', 'N') AS Lock_tables_priv,
  IF(JSON_VALUE(Priv, '$.access') &    262144, 'Y', 'N') AS Execute_priv,
  IF(JSON_VALUE(Priv, '$.access') &    524288, 'Y', 'N') AS Repl_slave_priv,
  IF(JSON_VALUE(Priv, '$.access') &   1048576, 'Y', 'N') AS Repl_client_priv,
  IF(JSON_VALUE(Priv, '$.access') &   2097152, 'Y', 'N') AS Create_view_priv,
  IF(JSON_VALUE(Priv, '$.access') &   4194304, 'Y', 'N') AS Show_view_priv,
  IF(JSON_VALUE(Priv, '$.access') &   8388608, 'Y', 'N') AS Create_routine_priv,
  IF(JSON_VALUE(Priv, '$.access') &  16777216, 'Y', 'N') AS Alter_routine_priv,
  IF(JSON_VALUE(Priv, '$.access') &  33554432, 'Y', 'N') AS Create_user_priv,
  IF(JSON_VALUE(Priv, '$.access') &  67108864, 'Y', 'N') AS Event_priv,
  IF(JSON_VALUE(Priv, '$.access') & 134217728, 'Y', 'N') AS Trigger_priv,
  IF(JSON_VALUE(Priv, '$.access') & 268435456, 'Y', 'N') AS Create_tablespace_priv,
  IF(JSON_VALUE(Priv, '$.access') & 536870912, 'Y', 'N') AS Delete_history_priv,
  ELT(IFNULL(JSON_VALUE(Priv, '$.ssl_type'), 0) + 1, '', 'ANY','X509', 'SPECIFIED') AS ssl_type,
  IFNULL(JSON_VALUE(Priv, '$.ssl_cipher'), '') AS ssl_cipher,
  IFNULL(JSON_VALUE(Priv, '$.x509_issuer'), '') AS x509_issuer,
  IFNULL(JSON_VALUE(Priv, '$.x509_subject'), '') AS x509_subject,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_questions'), 0) AS UNSIGNED) AS max_questions,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_updates'), 0) AS UNSIGNED) AS max_updates,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_connections'), 0) AS UNSIGNED) AS max_connections,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_user_connections'), 0) AS SIGNED) AS max_user_connections,
  IFNULL(JSON_VALUE(Priv, '$.plugin'), '') AS plugin,
  IFNULL(JSON_VALUE(Priv, '$.authentication_string'), '') AS authentication_string,
  IF(IFNULL(JSON_VALUE(Priv, '$.password_last_changed'), 1) = 0, 'Y', 'N') AS password_expired,
  ELT(IFNULL(JSON_VALUE(Priv, '$.is_role'), 0) + 1, 'N', 'Y') AS is_role,
  IFNULL(JSON_VALUE(Priv, '$.default_role'), '') AS default_role,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_statement_time'), 0.0) AS DECIMAL(12,6)) AS max_statement_time
  FROM global_priv; ;


-- Dumping database structure for performance_schema
CREATE DATABASE IF NOT EXISTS `performance_schema` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `performance_schema`;

-- Dumping structure for table performance_schema.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'The connection''s client user name for the connection, or NULL if an internal thread.',
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'The connection client''s host name, or NULL if an internal thread.',
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Current connections for the account.',
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Total connections for the account.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.cond_instances
CREATE TABLE IF NOT EXISTS `cond_instances` (
  `NAME` varchar(128) NOT NULL COMMENT 'Client user name for the connection, or NULL if an internal thread.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the instrumented condition.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_stages_current
CREATE TABLE IF NOT EXISTS `events_stages_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of work units completed for the stage. NULL if the stage event progress is not instrumented.',
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of work units expected for the stage. NULL if the stage event progress is not instrumented.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either transaction, statement, stage or wait.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_stages_history
CREATE TABLE IF NOT EXISTS `events_stages_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of work units completed for the stage. NULL if the stage event progress is not instrumented.',
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of work units expected for the stage. NULL if the stage event progress is not instrumented.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either transaction, statement, stage or wait.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_stages_history_long
CREATE TABLE IF NOT EXISTS `events_stages_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of work units completed for the stage. NULL if the stage event progress is not instrumented.',
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of work units expected for the stage. NULL if the stage event progress is not instrumented.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either transaction, statement, stage or wait.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_stages_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_account_by_event_name` (
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User. Used together with HOST and EVENT_NAME for grouping events.',
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host. Used together with USER and EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_stages_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_host_by_event_name` (
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_stages_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_NAME uniquely identifies the row.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with THREAD_ID for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_stages_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_user_by_event_name` (
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_stages_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_current
CREATE TABLE IF NOT EXISTS `events_statements_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
  `SQL_TEXT` longtext DEFAULT NULL COMMENT 'The SQL statement, or NULL if the command is not associated with an SQL statement.',
  `DIGEST` varchar(32) DEFAULT NULL COMMENT 'Statement digest.',
  `DIGEST_TEXT` longtext DEFAULT NULL COMMENT 'Statement digest text.',
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Statement''s default database for the statement, or NULL if there was none.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object type for nested statements (stored programs).',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object schema for nested statements (stored programs).',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object name for nested statements (stored programs).',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Address in memory of the statement object.',
  `MYSQL_ERRNO` int(11) DEFAULT NULL COMMENT 'Error code. See MariaDB Error Codes for a full list.',
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL COMMENT 'The SQLSTATE value.',
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL COMMENT 'Statement error message. See MariaDB Error Codes.',
  `ERRORS` bigint(20) unsigned NOT NULL COMMENT '0 if SQLSTATE signifies completion (starting with 00) or warning (01), otherwise 1.',
  `WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Number of warnings from the diagnostics area.',
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows affected the statement affected.',
  `ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Number of rows returned.',
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows read during the statement''s execution.',
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of on-disk temp tables created by the statement.',
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of temp tables created by the statement.',
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which did not use an index.',
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range search of the first table.',
  `SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range of the first table.',
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Number of joins without keys performed by the statement that check for key usage after each row.',
  `SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a full scan of the first table.',
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Number of merge passes by the sort algorithm performed by the statement. If too high, you may need to increase the sort_buffer_size.',
  `SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a range.',
  `SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Number of rows sorted by the statement.',
  `SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a full table scan.',
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if the statement performed a table scan with an index, 1 if without an index.',
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if a good index was found for the statement, 1 if no good index was found. See the Range checked for each record description in the EXPLAIN article.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement event id for nested statements (stored programs).',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement event type for nested statements (stored programs).',
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL COMMENT '0 for top level statements. The parent statement level plus 1 for nested statements (stored programs).'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_history
CREATE TABLE IF NOT EXISTS `events_statements_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
  `SQL_TEXT` longtext DEFAULT NULL COMMENT 'The SQL statement, or NULL if the command is not associated with an SQL statement.',
  `DIGEST` varchar(32) DEFAULT NULL COMMENT 'Statement digest.',
  `DIGEST_TEXT` longtext DEFAULT NULL COMMENT 'Statement digest text.',
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Statement''s default database for the statement, or NULL if there was none.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object type for nested statements (stored programs).',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object schema for nested statements (stored programs).',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object name for nested statements (stored programs).',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Address in memory of the statement object.',
  `MYSQL_ERRNO` int(11) DEFAULT NULL COMMENT 'Error code. See MariaDB Error Codes for a full list.',
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL COMMENT 'The SQLSTATE value.',
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL COMMENT 'Statement error message. See MariaDB Error Codes.',
  `ERRORS` bigint(20) unsigned NOT NULL COMMENT '0 if SQLSTATE signifies completion (starting with 00) or warning (01), otherwise 1.',
  `WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Number of warnings from the diagnostics area.',
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows affected the statement affected.',
  `ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Number of rows returned.',
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows read during the statement''s execution.',
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of on-disk temp tables created by the statement.',
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of temp tables created by the statement.',
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which did not use an index.',
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range search of the first table.',
  `SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range of the first table.',
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Number of joins without keys performed by the statement that check for key usage after each row.',
  `SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a full scan of the first table.',
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Number of merge passes by the sort algorithm performed by the statement. If too high, you may need to increase the sort_buffer_size.',
  `SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a range.',
  `SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Number of rows sorted by the statement.',
  `SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a full table scan.',
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if the statement performed a table scan with an index, 1 if without an index.',
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if a good index was found for the statement, 1 if no good index was found. See the Range checked for each record description in the EXPLAIN article.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement event id for nested statements (stored programs).',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement event type for nested statements (stored programs).',
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL COMMENT '0 for top level statements. The parent statement level plus 1 for nested statements (stored programs).'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_history_long
CREATE TABLE IF NOT EXISTS `events_statements_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
  `SQL_TEXT` longtext DEFAULT NULL COMMENT 'The SQL statement, or NULL if the command is not associated with an SQL statement.',
  `DIGEST` varchar(32) DEFAULT NULL COMMENT 'Statement digest.',
  `DIGEST_TEXT` longtext DEFAULT NULL COMMENT 'Statement digest text.',
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Statement''s default database for the statement, or NULL if there was none.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object type for nested statements (stored programs).',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object schema for nested statements (stored programs).',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement object name for nested statements (stored programs).',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Address in memory of the statement object.',
  `MYSQL_ERRNO` int(11) DEFAULT NULL COMMENT 'Error code. See MariaDB Error Codes for a full list.',
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL COMMENT 'The SQLSTATE value.',
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL COMMENT 'Statement error message. See MariaDB Error Codes.',
  `ERRORS` bigint(20) unsigned NOT NULL COMMENT '0 if SQLSTATE signifies completion (starting with 00) or warning (01), otherwise 1.',
  `WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Number of warnings from the diagnostics area.',
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows affected the statement affected.',
  `ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Number of rows returned.',
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows read during the statement''s execution.',
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of on-disk temp tables created by the statement.',
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of temp tables created by the statement.',
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which did not use an index.',
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range search of the first table.',
  `SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range of the first table.',
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Number of joins without keys performed by the statement that check for key usage after each row.',
  `SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a full scan of the first table.',
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Number of merge passes by the sort algorithm performed by the statement. If too high, you may need to increase the sort_buffer_size.',
  `SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a range.',
  `SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Number of rows sorted by the statement.',
  `SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a full table scan.',
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if the statement performed a table scan with an index, 1 if without an index.',
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if a good index was found for the statement, 1 if no good index was found. See the Range checked for each record description in the EXPLAIN article.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement event id for nested statements (stored programs).',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'NULL for top level statements. The parent statement event type for nested statements (stored programs).',
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL COMMENT '0 for top level statements. The parent statement level plus 1 for nested statements (stored programs).'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_account_by_event_name` (
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User. Used together with HOST and EVENT_NAME for grouping events.',
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host. Used together with USER and EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_summary_by_digest
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_digest` (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL COMMENT 'Database name. Records are summarised together with DIGEST.',
  `DIGEST` varchar(32) DEFAULT NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.',
  `DIGEST_TEXT` longtext DEFAULT NULL COMMENT 'The unhashed form of the digest.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.',
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Time at which the digest was first seen.',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Time at which the digest was most recently seen.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_host_by_event_name` (
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_currentd table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOINW column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_summary_by_program
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_program` (
  `OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') DEFAULT NULL COMMENT 'Object type for which the summary is generated.',
  `OBJECT_SCHEMA` varchar(64) NOT NULL COMMENT 'The schema of the object for which the summary is generated.',
  `OBJECT_NAME` varchar(64) NOT NULL COMMENT 'The name of the object for which the summary is generated.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'The number of summarized events (from events_statements_current). This value includes all events, whether timed or nontimed.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of the summarized timed events. This value is calculated only for timed events because nontimed events have a wait time of NULL. The same is true for the other xxx_TIMER_WAIT values.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of the summarized timed events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of the summarized timed events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of the summarized timed events.',
  `COUNT_STATEMENTS` bigint(20) unsigned NOT NULL COMMENT 'Total number of nested statements invoked during stored program execution.',
  `SUM_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of the summarized timed statements. This value is calculated only for timed statements because nontimed statements have a wait time of NULL. The same is true for the other xxx_STATEMENT_WAIT values.',
  `MIN_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of the summarized timed statements.',
  `AVG_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of the summarized timed statements.',
  `MAX_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of the summarized timed statements.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'The total time spent (in picoseconds) waiting for table locks for the summarized statements.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'The total number of errors that occurend for the summarized statements.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'The total number of warnings that occurend for the summarized statements.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'The total number of affected rows by the summarized statements.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'The total number of rows returned by the summarized statements.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'The total number of rows examined by the summarized statements.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'The total number of on-disk temporary tables created by the summarized statements.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'The total number of in-memory temporary tables created by the summarized statements.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'The total number of full joins executed by the summarized statements.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'The total number of range search joins executed by the summarized statements.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'The total number of joins that used ranges on the first table executed by the summarized statements.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'The total number of joins that check for key usage after each row executed by the summarized statements.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'The total number of joins that did a full scan of the first table executed by the summarized statements.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'The total number of merge passes that the sort algorithm has had to do for the summarized statements.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'The total number of sorts that were done using ranges for the summarized statements.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'The total number of sorted rows that were sorted by the summarized statements.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'The total number of sorts that were done by scanning the table by the summarized statements.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'The total number of statements that performed a table scan without using an index.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'The total number of statements where no good index was found.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_NAME uniquely identifies the row.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with THREAD_ID for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_user_by_event_name` (
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_statements_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_transactions_current
CREATE TABLE IF NOT EXISTS `events_transactions_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'The thread associated with the event.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'The event id associated with the event.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'This column is set to NULL when the event starts and updated to the thread current event number when the event ends.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'The name of the instrument from which the event was collected. This is a NAME value from the setup_instruments table.',
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL COMMENT 'The current transaction state. The value is ACTIVE (after START TRANSACTION or BEGIN), COMMITTED (after COMMIT), or ROLLED BACK (after ROLLBACK).',
  `TRX_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Unused.',
  `GTID` varchar(64) DEFAULT NULL COMMENT 'Transaction GTID, using the format DOMAIN-SERVER_ID-SEQUENCE_NO.',
  `XID_FORMAT_ID` int(11) DEFAULT NULL COMMENT 'XA transaction format ID for GTRID and BQUAL values.',
  `XID_GTRID` varchar(130) DEFAULT NULL COMMENT 'XA global transaction ID.',
  `XID_BQUAL` varchar(130) DEFAULT NULL COMMENT 'XA transaction branch qualifier.',
  `XA_STATE` varchar(64) DEFAULT NULL COMMENT 'The state of the XA transaction. The value is ACTIVE (after XA START), IDLE (after XA END), PREPARED (after XA PREPARE), ROLLED BACK (after XA ROLLBACK), or COMMITTED (after XA COMMIT).',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'The name of the source file containing the instrumented code that produced the event and the line number in the file at which the instrumentation occurs.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. When event timing started. NULL if event has no timing information.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. When event timing ended. NULL if event has no timing information.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. Event duration. NULL if event has not timing information.',
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL COMMENT 'Transaction access mode.',
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL COMMENT 'Transaction isolation level. One of: REPEATABLE READ, READ COMMITTED, READ UNCOMMITTED, or SERIALIZABLE.',
  `AUTOCOMMIT` enum('YES','NO') NOT NULL COMMENT 'Whether autcommit mode was enabled when the transaction started.',
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of SAVEPOINT statements issued during the transaction.',
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of ROLLBACK_TO_SAVEPOINT statements issued during the transaction.',
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of RELEASE_SAVEPOINT statements issued during the transaction.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Unused.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The EVENT_ID value of the event within which this event is nested.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'The nesting event type.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_transactions_history
CREATE TABLE IF NOT EXISTS `events_transactions_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'The thread associated with the event.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'The event id associated with the event.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'This column is set to NULL when the event starts and updated to the thread current event number when the event ends.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'The name of the instrument from which the event was collected. This is a NAME value from the setup_instruments table.',
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL COMMENT 'The current transaction state. The value is ACTIVE (after START TRANSACTION or BEGIN), COMMITTED (after COMMIT), or ROLLED BACK (after ROLLBACK).',
  `TRX_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Unused.',
  `GTID` varchar(64) DEFAULT NULL COMMENT 'Transaction GTID, using the format DOMAIN-SERVER_ID-SEQUENCE_NO.',
  `XID_FORMAT_ID` int(11) DEFAULT NULL COMMENT 'XA transaction format ID for GTRID and BQUAL values.',
  `XID_GTRID` varchar(130) DEFAULT NULL COMMENT 'XA global transaction ID.',
  `XID_BQUAL` varchar(130) DEFAULT NULL COMMENT 'XA transaction branch qualifier.',
  `XA_STATE` varchar(64) DEFAULT NULL COMMENT 'The state of the XA transaction. The value is ACTIVE (after XA START), IDLE (after XA END), PREPARED (after XA PREPARE), ROLLED BACK (after XA ROLLBACK), or COMMITTED (after XA COMMIT).',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'The name of the source file containing the instrumented code that produced the event and the line number in the file at which the instrumentation occurs.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. When event timing started. NULL if event has no timing information.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. When event timing ended. NULL if event has no timing information.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. Event duration. NULL if event has not timing information.',
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL COMMENT 'Transaction access mode.',
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL COMMENT 'Transaction isolation level. One of: REPEATABLE READ, READ COMMITTED, READ UNCOMMITTED, or SERIALIZABLE.',
  `AUTOCOMMIT` enum('YES','NO') NOT NULL COMMENT 'Whether autcommit mode was enabled when the transaction started.',
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of SAVEPOINT statements issued during the transaction.',
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of ROLLBACK_TO_SAVEPOINT statements issued during the transaction.',
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of RELEASE_SAVEPOINT statements issued during the transaction.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Unused.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The EVENT_ID value of the event within which this event is nested.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'The nesting event type.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_transactions_history_long
CREATE TABLE IF NOT EXISTS `events_transactions_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'The thread associated with the event.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'The event id associated with the event.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'This column is set to NULL when the event starts and updated to the thread current event number when the event ends.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'The name of the instrument from which the event was collected. This is a NAME value from the setup_instruments table.',
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL COMMENT 'The current transaction state. The value is ACTIVE (after START TRANSACTION or BEGIN), COMMITTED (after COMMIT), or ROLLED BACK (after ROLLBACK).',
  `TRX_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Unused.',
  `GTID` varchar(64) DEFAULT NULL COMMENT 'Transaction GTID, using the format DOMAIN-SERVER_ID-SEQUENCE_NO.',
  `XID_FORMAT_ID` int(11) DEFAULT NULL COMMENT 'XA transaction format ID for GTRID and BQUAL values.',
  `XID_GTRID` varchar(130) DEFAULT NULL COMMENT 'XA global transaction ID.',
  `XID_BQUAL` varchar(130) DEFAULT NULL COMMENT 'XA transaction branch qualifier.',
  `XA_STATE` varchar(64) DEFAULT NULL COMMENT 'The state of the XA transaction. The value is ACTIVE (after XA START), IDLE (after XA END), PREPARED (after XA PREPARE), ROLLED BACK (after XA ROLLBACK), or COMMITTED (after XA COMMIT).',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'The name of the source file containing the instrumented code that produced the event and the line number in the file at which the instrumentation occurs.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. When event timing started. NULL if event has no timing information.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. When event timing ended. NULL if event has no timing information.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'The unit is picoseconds. Event duration. NULL if event has not timing information.',
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL COMMENT 'Transaction access mode.',
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL COMMENT 'Transaction isolation level. One of: REPEATABLE READ, READ COMMITTED, READ UNCOMMITTED, or SERIALIZABLE.',
  `AUTOCOMMIT` enum('YES','NO') NOT NULL COMMENT 'Whether autcommit mode was enabled when the transaction started.',
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of SAVEPOINT statements issued during the transaction.',
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of ROLLBACK_TO_SAVEPOINT statements issued during the transaction.',
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL COMMENT 'The number of RELEASE_SAVEPOINT statements issued during the transaction.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Unused.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The EVENT_ID value of the event within which this event is nested.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'The nesting event type.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_transactions_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User for which summary is generated.',
  `HOST` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host for which summary is generated.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name for which summary is generated.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'The number of summarized events. This value includes all events, whether timed or nontimed.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of the summarized timed events. This value is calculated only for timed events because nontimed events have a wait time of NULL. The same is true for the other xxx_TIMER_WAIT values.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of the summarized timed events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of the summarized timed events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of the summarized timed events.',
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ/WRITE transaction events.',
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ/WRITE transaction events.',
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ/WRITE transaction events.',
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ/WRITE transaction events.',
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ/WRITE transaction events.',
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ ONLY transaction events.',
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ ONLY transaction events.',
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ ONLY transaction events.',
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ ONLY transaction events.',
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ ONLY transaction events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_transactions_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host for which summary is generated.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name for which summary is generated.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'The number of summarized events. This value includes all events, whether timed or nontimed.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of the summarized timed events. This value is calculated only for timed events because nontimed events have a wait time of NULL. The same is true for the other xxx_TIMER_WAIT values.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of the summarized timed events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of the summarized timed events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of the summarized timed events.',
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ/WRITE transaction events.',
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ/WRITE transaction events.',
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ/WRITE transaction events.',
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ/WRITE transaction events.',
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ/WRITE transaction events.',
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ ONLY transaction events.',
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ ONLY transaction events.',
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ ONLY transaction events.',
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ ONLY transaction events.',
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ ONLY transaction events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_transactions_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread for which summary is generated.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name for which summary is generated.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'The number of summarized events. This value includes all events, whether timed or nontimed.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of the summarized timed events. This value is calculated only for timed events because nontimed events have a wait time of NULL. The same is true for the other xxx_TIMER_WAIT values.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of the summarized timed events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of the summarized timed events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of the summarized timed events.',
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ/WRITE transaction events.',
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ/WRITE transaction events.',
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ/WRITE transaction events.',
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ/WRITE transaction events.',
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ/WRITE transaction events.',
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ ONLY transaction events.',
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ ONLY transaction events.',
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ ONLY transaction events.',
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ ONLY transaction events.',
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ ONLY transaction events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_transactions_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User for which summary is generated.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name for which summary is generated.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'The number of summarized events. This value includes all events, whether timed or nontimed.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of the summarized timed events. This value is calculated only for timed events because nontimed events have a wait time of NULL. The same is true for the other xxx_TIMER_WAIT values.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of the summarized timed events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of the summarized timed events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of the summarized timed events.',
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ/WRITE transaction events.',
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ/WRITE transaction events.',
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ/WRITE transaction events.',
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ/WRITE transaction events.',
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ/WRITE transaction events.',
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ ONLY transaction events.',
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ ONLY transaction events.',
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ ONLY transaction events.',
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ ONLY transaction events.',
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ ONLY transaction events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_transactions_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_transactions_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name for which summary is generated.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'The number of summarized events. This value includes all events, whether timed or nontimed.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of the summarized timed events. This value is calculated only for timed events because nontimed events have a wait time of NULL. The same is true for the other xxx_TIMER_WAIT values.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of the summarized timed events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of the summarized timed events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of the summarized timed events.',
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ/WRITE transaction events.',
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ/WRITE transaction events.',
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ/WRITE transaction events.',
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ/WRITE transaction events.',
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ/WRITE transaction events.',
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total number of only READ ONLY transaction events.',
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The total wait time of only READ ONLY transaction events.',
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The minimum wait time of only READ ONLY transaction events.',
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The average wait time of only READ ONLY transaction events.',
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL COMMENT 'The maximum wait time of only READ ONLY transaction events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_current
CREATE TABLE IF NOT EXISTS `events_waits_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `SPINS` int(10) unsigned DEFAULT NULL COMMENT 'Number of spin rounds for a mutex, or NULL if spin rounds are not used, or spinning is not instrumented.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Name of the schema that contains the table for table I/O objects, otherwise NULL for file I/O and synchronization objects.',
  `OBJECT_NAME` varchar(512) DEFAULT NULL COMMENT 'File name for file I/O objects, table name for table I/O objects, the socket''s IP:PORT value for a socket object or NULL for a synchronization object.',
  `INDEX_NAME` varchar(64) DEFAULT NULL COMMENT 'Name of the index, PRIMARY for the primary key, or NULL for no index used.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'FILE for a file object, TABLE or TEMPORARY TABLE for a table object, or NULL for a synchronization object.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the object.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.',
  `OPERATION` varchar(32) NOT NULL COMMENT 'Operation type, for example read, write or lock',
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL COMMENT 'Number of bytes that the operation read or wrote, or NULL for table I/O waits.',
  `FLAGS` int(10) unsigned DEFAULT NULL COMMENT 'Reserved for use in the future.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_history
CREATE TABLE IF NOT EXISTS `events_waits_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `SPINS` int(10) unsigned DEFAULT NULL COMMENT 'Number of spin rounds for a mutex, or NULL if spin rounds are not used, or spinning is not instrumented.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Name of the schema that contains the table for table I/O objects, otherwise NULL for file I/O and synchronization objects.',
  `OBJECT_NAME` varchar(512) DEFAULT NULL COMMENT 'File name for file I/O objects, table name for table I/O objects, the socket''s IP:PORT value for a socket object or NULL for a synchronization object.',
  `INDEX_NAME` varchar(64) DEFAULT NULL COMMENT 'Name of the index, PRIMARY for the primary key, or NULL for no index used.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'FILE for a file object, TABLE or TEMPORARY TABLE for a table object, or NULL for a synchronization object.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the object.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.',
  `OPERATION` varchar(32) NOT NULL COMMENT 'Operation type, for example read, write or lock',
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL COMMENT 'Number of bytes that the operation read or wrote, or NULL for table I/O waits.',
  `FLAGS` int(10) unsigned DEFAULT NULL COMMENT 'Reserved for use in the future.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_history_long
CREATE TABLE IF NOT EXISTS `events_waits_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `SPINS` int(10) unsigned DEFAULT NULL COMMENT 'Number of spin rounds for a mutex, or NULL if spin rounds are not used, or spinning is not instrumented.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Name of the schema that contains the table for table I/O objects, otherwise NULL for file I/O and synchronization objects.',
  `OBJECT_NAME` varchar(512) DEFAULT NULL COMMENT 'File name for file I/O objects, table name for table I/O objects, the socket''s IP:PORT value for a socket object or NULL for a synchronization object.',
  `INDEX_NAME` varchar(64) DEFAULT NULL COMMENT 'Name of the index, PRIMARY for the primary key, or NULL for no index used.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'FILE for a file object, TABLE or TEMPORARY TABLE for a table object, or NULL for a synchronization object.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the object.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.',
  `OPERATION` varchar(32) NOT NULL COMMENT 'Operation type, for example read, write or lock',
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL COMMENT 'Number of bytes that the operation read or wrote, or NULL for table I/O waits.',
  `FLAGS` int(10) unsigned DEFAULT NULL COMMENT 'Reserved for use in the future.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_account_by_event_name` (
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User. Used together with HOST and EVENT_NAME for grouping events.',
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host. Used together with USER and EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_host_by_event_name` (
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_summary_by_instance
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with OBJECT_INSTANCE_BEGIN for grouping events.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'If an instrument creates multiple instances, each instance has a unique OBJECT_INSTANCE_BEGIN value to allow for grouping by instance.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_NAME uniquely identifies the row.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with THREAD_ID for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_user_by_event_name` (
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.events_waits_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.file_instances
CREATE TABLE IF NOT EXISTS `file_instances` (
  `FILE_NAME` varchar(512) NOT NULL COMMENT 'File name.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Instrument name associated with the file.',
  `OPEN_COUNT` int(10) unsigned NOT NULL COMMENT 'Open handles on the file. A value of greater than zero means that the file is currently open.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.file_summary_by_event_name
CREATE TABLE IF NOT EXISTS `file_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL COMMENT 'Bytes read by read operations.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL COMMENT 'Bytes written by write operations.',
  `COUNT_MISC` bigint(20) unsigned NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CREATE, DELETE, OPEN, CLOSE, STREAM_OPEN, STREAM_CLOSE, SEEK, TELL, FLUSH, STAT, FSTAT, CHSIZE, RENAME, and SYNC.',
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all miscellaneous operations that are timed.',
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all miscellaneous operations that are timed.',
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all miscellaneous operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.file_summary_by_instance
CREATE TABLE IF NOT EXISTS `file_summary_by_instance` (
  `FILE_NAME` varchar(512) NOT NULL COMMENT 'File name.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory. Together with FILE_NAME and EVENT_NAME uniquely identifies a row.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL COMMENT 'Bytes read by read operations.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL COMMENT 'Bytes written by write operations.',
  `COUNT_MISC` bigint(20) unsigned NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CREATE, DELETE, OPEN, CLOSE, STREAM_OPEN, STREAM_CLOSE, SEEK, TELL, FLUSH, STAT, FSTAT, CHSIZE, RENAME, and SYNC.',
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all miscellaneous operations that are timed.',
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all miscellaneous operations that are timed.',
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all miscellaneous operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.global_status
CREATE TABLE IF NOT EXISTS `global_status` (
  `VARIABLE_NAME` varchar(64) NOT NULL COMMENT 'The global status variable name.',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL COMMENT 'The global status variable value.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.hosts
CREATE TABLE IF NOT EXISTS `hosts` (
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host name used by the client to connect, NULL for internal threads or user sessions that failed to authenticate.',
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Current number of the host''s connections.',
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Total number of the host''s connections'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.host_cache
CREATE TABLE IF NOT EXISTS `host_cache` (
  `IP` varchar(64) NOT NULL COMMENT 'Client IP address.',
  `HOST` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'IP''s resolved DNS host name, or NULL if unknown.',
  `HOST_VALIDATED` enum('YES','NO') NOT NULL COMMENT 'YES if the IP-to-host DNS lookup was successful, and the HOST column can be used to avoid DNS calls, or NO if unsuccessful, in which case DNS lookup is performed for each connect until either successful or a permanent error.',
  `SUM_CONNECT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of connection errors. Counts only protocol handshake errors for hosts that passed validation. These errors count towards max_connect_errors.',
  `COUNT_HOST_BLOCKED_ERRORS` bigint(20) NOT NULL COMMENT 'Number of blocked connections because SUM_CONNECT_ERRORS exceeded the max_connect_errors system variable.',
  `COUNT_NAMEINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of transient errors during IP-to-host DNS lookups.',
  `COUNT_NAMEINFO_PERMANENT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of permanent errors during IP-to-host DNS lookups.',
  `COUNT_FORMAT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of host name format errors, for example a numeric host column.',
  `COUNT_ADDRINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of transient errors during host-to-IP reverse DNS lookups.',
  `COUNT_ADDRINFO_PERMANENT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of permanent errors during host-to-IP reverse DNS lookups.',
  `COUNT_FCRDNS_ERRORS` bigint(20) NOT NULL COMMENT 'Number of forward-confirmed reverse DNS errors, which occur when IP-to-host DNS lookup does not match the originating IP address.',
  `COUNT_HOST_ACL_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors occurring because no user from the host is permitted to log in. These attempts return error code 1130 ER_HOST_NOT_PRIVILEGED and do not proceed to username and password authentication.',
  `COUNT_NO_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to requesting an authentication plugin that was not available. This can be due to the plugin never having been loaded, or the load attempt failing.',
  `COUNT_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors reported by an authentication plugin. Plugins can increment COUNT_AUTHENTICATION_ERRORS or COUNT_HANDSHAKE_ERRORS instead, but, if specified or the error is unknown, this column is incremented.',
  `COUNT_HANDSHAKE_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors detected at the wire protocol level.',
  `COUNT_PROXY_USER_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors detected when a proxy user is proxied to a user that does not exist.',
  `COUNT_PROXY_USER_ACL_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors detected when a proxy user is proxied to a user that exists, but the proxy user doesn''t have the PROXY privilege.',
  `COUNT_AUTHENTICATION_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors where authentication failed.',
  `COUNT_SSL_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to TLS problems.',
  `COUNT_MAX_USER_CONNECTIONS_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to the per-user quota being exceeded.',
  `COUNT_MAX_USER_CONNECTIONS_PER_HOUR_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to the per-hour quota being exceeded.',
  `COUNT_DEFAULT_DATABASE_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to the user not having permission to access the specified default database, or it not existing.',
  `COUNT_INIT_CONNECT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to statements in the init_connect system variable.',
  `COUNT_LOCAL_ERRORS` bigint(20) NOT NULL COMMENT 'Number of local server errors, such as out-of-memory errors, unrelated to network, authentication, or authorization.',
  `COUNT_UNKNOWN_ERRORS` bigint(20) NOT NULL COMMENT 'Number of unknown errors that cannot be allocated to another column.',
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Timestamp of the first connection attempt by the IP.',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Timestamp of the most recent connection attempt by the IP.',
  `FIRST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Timestamp of the first error seen from the IP.',
  `LAST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Timestamp of the most recent error seen from the IP.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.memory_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User portion of the account.',
  `HOST` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host portion of the account.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of allocations to memory.',
  `COUNT_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of attempts to free the allocated memory.',
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes allocated.',
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes freed',
  `LOW_COUNT_USED` bigint(20) NOT NULL COMMENT 'Lowest number of allocated blocks (lowest value of CURRENT_COUNT_USED).',
  `CURRENT_COUNT_USED` bigint(20) NOT NULL COMMENT 'Currently allocated blocks that have not been freed (COUNT_ALLOC minus COUNT_FREE).',
  `HIGH_COUNT_USED` bigint(20) NOT NULL COMMENT 'Highest number of allocated blocks (highest value of CURRENT_COUNT_USED).',
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Lowest number of bytes used.',
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Highest number of bytes used.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.memory_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host portion of the account.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of allocations to memory.',
  `COUNT_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of attempts to free the allocated memory.',
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes allocated.',
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes freed',
  `LOW_COUNT_USED` bigint(20) NOT NULL COMMENT 'Lowest number of allocated blocks (lowest value of CURRENT_COUNT_USED).',
  `CURRENT_COUNT_USED` bigint(20) NOT NULL COMMENT 'Currently allocated blocks that have not been freed (COUNT_ALLOC minus COUNT_FREE).',
  `HIGH_COUNT_USED` bigint(20) NOT NULL COMMENT 'Highest number of allocated blocks (highest value of CURRENT_COUNT_USED).',
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Lowest number of bytes used.',
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Highest number of bytes used.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.memory_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread id.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of allocations to memory.',
  `COUNT_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of attempts to free the allocated memory.',
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes allocated.',
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes freed',
  `LOW_COUNT_USED` bigint(20) NOT NULL COMMENT 'Lowest number of allocated blocks (lowest value of CURRENT_COUNT_USED).',
  `CURRENT_COUNT_USED` bigint(20) NOT NULL COMMENT 'Currently allocated blocks that have not been freed (COUNT_ALLOC minus COUNT_FREE).',
  `HIGH_COUNT_USED` bigint(20) NOT NULL COMMENT 'Highest number of allocated blocks (highest value of CURRENT_COUNT_USED).',
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Lowest number of bytes used.',
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Highest number of bytes used.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.memory_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User portion of the account.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of allocations to memory.',
  `COUNT_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of attempts to free the allocated memory.',
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes allocated.',
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes freed',
  `LOW_COUNT_USED` bigint(20) NOT NULL COMMENT 'Lowest number of allocated blocks (lowest value of CURRENT_COUNT_USED).',
  `CURRENT_COUNT_USED` bigint(20) NOT NULL COMMENT 'Currently allocated blocks that have not been freed (COUNT_ALLOC minus COUNT_FREE).',
  `HIGH_COUNT_USED` bigint(20) NOT NULL COMMENT 'Highest number of allocated blocks (highest value of CURRENT_COUNT_USED).',
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Lowest number of bytes used.',
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Highest number of bytes used.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.memory_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `memory_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of allocations to memory.',
  `COUNT_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of attempts to free the allocated memory.',
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes allocated.',
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL COMMENT 'Total number of bytes freed',
  `LOW_COUNT_USED` bigint(20) NOT NULL COMMENT 'Lowest number of allocated blocks (lowest value of CURRENT_COUNT_USED).',
  `CURRENT_COUNT_USED` bigint(20) NOT NULL COMMENT 'Currently allocated blocks that have not been freed (COUNT_ALLOC minus COUNT_FREE).',
  `HIGH_COUNT_USED` bigint(20) NOT NULL COMMENT 'Highest number of allocated blocks (highest value of CURRENT_COUNT_USED).',
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Lowest number of bytes used.',
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL COMMENT 'Highest number of bytes used.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.metadata_locks
CREATE TABLE IF NOT EXISTS `metadata_locks` (
  `OBJECT_TYPE` varchar(64) NOT NULL COMMENT 'Object type. One of BACKUP, COMMIT, EVENT, FUNCTION, GLOBAL, LOCKING SERVICE, PROCEDURE, SCHEMA, TABLE, TABLESPACE, TRIGGER (unused) or USER LEVEL LOCK.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Object schema.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Object name.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the instrumented object.',
  `LOCK_TYPE` varchar(32) NOT NULL COMMENT 'Lock type. One of BACKUP_FTWRL1, BACKUP_START, BACKUP_TRANS_DML, EXCLUSIVE, INTENTION_EXCLUSIVE, SHARED, SHARED_HIGH_PRIO, SHARED_NO_READ_WRITE, SHARED_NO_WRITE, SHARED_READ, SHARED_UPGRADABLE or SHARED_WRITE.',
  `LOCK_DURATION` varchar(32) NOT NULL COMMENT 'Lock duration. One of EXPLICIT (locks released by explicit action, for example a global lock acquired with FLUSH TABLES WITH READ LOCK) , STATEMENT (locks implicitly released at statement end) or TRANSACTION (locks implicitly released at transaction end).',
  `LOCK_STATUS` varchar(32) NOT NULL COMMENT 'Lock status. One of GRANTED, KILLED, PENDING, POST_RELEASE_NOTIFY, PRE_ACQUIRE_NOTIFY, TIMEOUT or VICTIM.',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Source file containing the instrumented code that produced the event, as well as the line number where the instrumentation occurred. This allows one to examine the source code involved.',
  `OWNER_THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Thread that requested the lock.',
  `OWNER_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Event that requested the lock.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.mutex_instances
CREATE TABLE IF NOT EXISTS `mutex_instances` (
  `NAME` varchar(128) NOT NULL COMMENT 'Instrument name associated with the mutex.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Memory address of the instrumented mutex.',
  `LOCKED_BY_THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The THREAD_ID of the locking thread if a thread has a mutex locked, otherwise NULL.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.objects_summary_global_by_type
CREATE TABLE IF NOT EXISTS `objects_summary_global_by_type` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Groups records together with OBJECT_SCHEMA and OBJECT_NAME.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Groups records together with OBJECT_TYPE and OBJECT_NAME.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Groups records together with OBJECT_SCHEMA and OBJECT_TYPE.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.performance_timers
CREATE TABLE IF NOT EXISTS `performance_timers` (
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL COMMENT 'Time name, used in the setup_timers table.',
  `TIMER_FREQUENCY` bigint(20) DEFAULT NULL COMMENT 'Number of timer units per second. Dependent on the processor speed.',
  `TIMER_RESOLUTION` bigint(20) DEFAULT NULL COMMENT 'Number of timer units by which timed values increase each time.',
  `TIMER_OVERHEAD` bigint(20) DEFAULT NULL COMMENT 'Minimum timer overhead, determined during initialization by calling the timer 20 times and selecting the smallest value. Total overhead will be at least double this, as the timer is called at the beginning and end of each timed event.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.prepared_statements_instances
CREATE TABLE IF NOT EXISTS `prepared_statements_instances` (
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'The address in memory of the instrumented prepared statement.',
  `STATEMENT_ID` bigint(20) unsigned NOT NULL COMMENT 'The internal statement ID assigned by the server.',
  `STATEMENT_NAME` varchar(64) DEFAULT NULL COMMENT 'For the binary protocol, this column is NULL. For the text protocol, this column is the external statement name assigned by the user.',
  `SQL_TEXT` longtext NOT NULL COMMENT 'The prepared statement text, with ? placeholder markers.',
  `OWNER_THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Event thread id that created the prepared statement.',
  `OWNER_EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Event id that created the prepared statement.',
  `OWNER_OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') DEFAULT NULL COMMENT 'NULL for a prepared statement created by a client session. Type of the stored program that created the prepared statement.',
  `OWNER_OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'NULL for a prepared statement created by a client session. Schema of the stored program that created the prepared statement.',
  `OWNER_OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'NULL for a prepared statement created by a client session. Name of the stored program that created the prepared statement.',
  `TIMER_PREPARE` bigint(20) unsigned NOT NULL COMMENT 'The time spent executing the statement preparation itself.',
  `COUNT_REPREPARE` bigint(20) unsigned NOT NULL COMMENT 'The number of times the statement was reprepared internally.',
  `COUNT_EXECUTE` bigint(20) unsigned NOT NULL COMMENT 'Total times the prepared statement was executed.',
  `SUM_TIMER_EXECUTE` bigint(20) unsigned NOT NULL COMMENT 'Total time spent executing all prepared statements.',
  `MIN_TIMER_EXECUTE` bigint(20) unsigned NOT NULL COMMENT 'Minimum time spent executing any of the prepared statements.',
  `AVG_TIMER_EXECUTE` bigint(20) unsigned NOT NULL COMMENT 'Average time spent executing any of the prepared statements.',
  `MAX_TIMER_EXECUTE` bigint(20) unsigned NOT NULL COMMENT 'Maximum time spent executing any of the prepared statements.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'The total time spent (in picoseconds) waiting for table locks for the prepared statements.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'The total number of errors that occurend for the prepared statements.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'The total number of warnings that occurend for the prepared statements.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'The total number of affected rows by the prepared statements.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'The total number of rows returned by the prepared statements.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'The total number of rows examined by the prepared statements.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'The total number of on-disk temporary tables created by the prepared statements.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'The total number of in-memory temporary tables created by the prepared statements.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'The total number of full joins executed by the prepared statements.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'The total number of range search joins executed by the prepared statements.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'The total number of joins that used ranges on the first table executed by the prepared statements.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'The total number of joins that check for key usage after each row executed by the prepared statements.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'The total number of joins that did a full scan of the first table executed by the prepared statements.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'The total number of merge passes that the sort algorithm has had to do for the prepared statements.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'The total number of sorts that were done using ranges for the prepared statements.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'The total number of sorted rows that were sorted by the prepared statements.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'The total number of sorts that were done by scanning the table by the prepared statements.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'The total number of statements that performed a table scan without using an index.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'The total number of statements where no good index was found.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.replication_applier_configuration
CREATE TABLE IF NOT EXISTS `replication_applier_configuration` (
  `CHANNEL_NAME` varchar(256) NOT NULL COMMENT 'Replication channel name.',
  `DESIRED_DELAY` int(11) NOT NULL COMMENT 'Target number of seconds the replica should be delayed to the master.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.replication_applier_status
CREATE TABLE IF NOT EXISTS `replication_applier_status` (
  `CHANNEL_NAME` varchar(256) NOT NULL COMMENT 'The replication channel name.',
  `SERVICE_STATE` enum('ON','OFF') NOT NULL COMMENT 'Shows ON when the replication channel''s applier threads are active or idle, OFF means that the applier threads are not active.',
  `REMAINING_DELAY` int(10) unsigned DEFAULT NULL COMMENT 'Seconds the replica needs to wait to reach the desired delay from master.',
  `COUNT_TRANSACTIONS_RETRIES` bigint(20) unsigned NOT NULL COMMENT 'The number of retries that were made because the replication SQL thread failed to apply a transaction.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.replication_applier_status_by_coordinator
CREATE TABLE IF NOT EXISTS `replication_applier_status_by_coordinator` (
  `CHANNEL_NAME` varchar(256) NOT NULL COMMENT 'Replication channel name.',
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The SQL/coordinator thread ID.',
  `SERVICE_STATE` enum('ON','OFF') NOT NULL COMMENT 'ON (thread exists and is active or idle) or OFF (thread no longer exists).',
  `LAST_ERROR_NUMBER` int(11) NOT NULL COMMENT 'Last error number that caused the SQL/coordinator thread to stop.',
  `LAST_ERROR_MESSAGE` varchar(1024) NOT NULL COMMENT 'Last error message that caused the SQL/coordinator thread to stop.',
  `LAST_ERROR_TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Timestamp that shows when the most recent SQL/coordinator error occured.',
  `LAST_SEEN_TRANSACTION` char(57) NOT NULL COMMENT 'The transaction the worker has last seen.',
  `LAST_TRANS_RETRY_COUNT` int(11) NOT NULL COMMENT 'Total number of retries attempted by last transaction.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.replication_applier_status_by_worker
CREATE TABLE IF NOT EXISTS `replication_applier_status_by_worker` (
  `CHANNEL_NAME` varchar(256) NOT NULL COMMENT 'Name of replication channel through which the transaction is received.',
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Thread_Id as displayed in the performance_schema.threads table for thread with name ''thread/sql/rpl_parallel_thread''. THREAD_ID will be NULL when worker threads are stopped due to error/force stop.',
  `SERVICE_STATE` enum('ON','OFF') NOT NULL COMMENT 'Whether or not the thread is running.',
  `LAST_SEEN_TRANSACTION` char(57) NOT NULL COMMENT 'Last GTID executed by worker',
  `LAST_ERROR_NUMBER` int(11) NOT NULL COMMENT 'Last Error that occurred on a particular worker.',
  `LAST_ERROR_MESSAGE` varchar(1024) NOT NULL COMMENT 'Last error specific message.',
  `LAST_ERROR_TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Time stamp of last error.',
  `WORKER_IDLE_TIME` bigint(20) unsigned NOT NULL COMMENT 'Total idle time in seconds that the worker thread has spent waiting for work from SQL thread.',
  `LAST_TRANS_RETRY_COUNT` int(11) NOT NULL COMMENT 'Total number of retries attempted by last transaction.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.replication_connection_configuration
CREATE TABLE IF NOT EXISTS `replication_connection_configuration` (
  `CHANNEL_NAME` varchar(256) NOT NULL COMMENT 'The replication channel used.',
  `HOST` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'The host name of the source that the replica is connected to.',
  `PORT` int(11) NOT NULL COMMENT 'The port used to connect to the source.',
  `USER` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'The user name of the replication user account used to connect to the source.',
  `USING_GTID` enum('NO','CURRENT_POS','SLAVE_POS') NOT NULL COMMENT 'Whether replication is using GTIDs or not',
  `SSL_ALLOWED` enum('YES','NO','IGNORED') NOT NULL COMMENT 'Whether SSL is allowed for the replica connection.',
  `SSL_CA_FILE` varchar(512) NOT NULL COMMENT 'Path to the file that contains one or more certificates for trusted Certificate Authorities (CA) to use for TLS.',
  `SSL_CA_PATH` varchar(512) NOT NULL COMMENT 'Path to a directory that contains one or more PEM files that contain X509 certificates for a trusted Certificate Authority (CA) to use for TLS.',
  `SSL_CERTIFICATE` varchar(512) NOT NULL COMMENT 'Path to the certificate used to authenticate the master.',
  `SSL_CIPHER` varchar(512) NOT NULL COMMENT 'Which cipher is used for encription.',
  `SSL_KEY` varchar(512) NOT NULL COMMENT 'Path to the private key used for TLS.',
  `SSL_VERIFY_SERVER_CERTIFICATE` enum('YES','NO') NOT NULL COMMENT 'Whether the server certificate is verified as part of the SSL connection',
  `SSL_CRL_FILE` varchar(255) NOT NULL COMMENT 'Path to the PEM file containing one or more revoked X.509 certificates.',
  `SSL_CRL_PATH` varchar(255) NOT NULL COMMENT 'PATH to a folder containing PEM files containing one or more revoked X.509 certificates.',
  `CONNECTION_RETRY_INTERVAL` int(11) NOT NULL COMMENT 'The number of seconds between connect retries.',
  `CONNECTION_RETRY_COUNT` bigint(20) unsigned NOT NULL COMMENT 'The number of times the replica can attempt to reconnect to the source in the event of a lost connection.',
  `HEARTBEAT_INTERVAL` double(10,3) unsigned NOT NULL COMMENT 'Number of seconds after which a heartbeat will be sent.',
  `IGNORE_SERVER_IDS` longtext NOT NULL COMMENT 'Binary log events from servers (ids) to ignore.',
  `REPL_DO_DOMAIN_IDS` longtext NOT NULL COMMENT 'Only apply binary logs from these domain ids.',
  `REPL_IGNORE_DOMAIN_IDS` longtext NOT NULL COMMENT 'Binary log events from domains to ignore.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.rwlock_instances
CREATE TABLE IF NOT EXISTS `rwlock_instances` (
  `NAME` varchar(128) NOT NULL COMMENT 'Instrument name associated with the read write lock',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the instrumented lock',
  `WRITE_LOCKED_BY_THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'THREAD_ID of the locking thread if locked in write (exclusive) mode, otherwise NULL.',
  `READ_LOCKED_BY_COUNT` int(10) unsigned NOT NULL COMMENT 'Count of current read locks held'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.session_account_connect_attrs
CREATE TABLE IF NOT EXISTS `session_account_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL COMMENT 'Session connection identifier.',
  `ATTR_NAME` varchar(32) NOT NULL COMMENT 'Attribute name.',
  `ATTR_VALUE` varchar(1024) DEFAULT NULL COMMENT 'Attribute value.',
  `ORDINAL_POSITION` int(11) DEFAULT NULL COMMENT 'Order in which attribute was added to the connection attributes.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.session_connect_attrs
CREATE TABLE IF NOT EXISTS `session_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL COMMENT 'Session connection identifier.',
  `ATTR_NAME` varchar(32) NOT NULL COMMENT 'Attribute name.',
  `ATTR_VALUE` varchar(1024) DEFAULT NULL COMMENT 'Attribute value.',
  `ORDINAL_POSITION` int(11) DEFAULT NULL COMMENT 'Order in which attribute was added to the connection attributes.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.session_status
CREATE TABLE IF NOT EXISTS `session_status` (
  `VARIABLE_NAME` varchar(64) NOT NULL COMMENT 'The session status variable name.',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL COMMENT 'The session status variable value.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.setup_actors
CREATE TABLE IF NOT EXISTS `setup_actors` (
  `HOST` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '%' COMMENT 'Host name, either a literal, or the % wildcard representing any host.',
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '%' COMMENT 'User name, either a literal or the % wildcard representing any name.',
  `ROLE` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '%' COMMENT 'Unused',
  `ENABLED` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT 'Whether to enable instrumentation for foreground threads matched by the row.',
  `HISTORY` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT 'Whether to log historical events for foreground threads matched by the row.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.setup_consumers
CREATE TABLE IF NOT EXISTS `setup_consumers` (
  `NAME` varchar(64) NOT NULL COMMENT 'Consumer name',
  `ENABLED` enum('YES','NO') NOT NULL COMMENT 'YES or NO for whether or not the consumer is enabled. You can modify this column to ensure that event information is added, or is not added.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.setup_instruments
CREATE TABLE IF NOT EXISTS `setup_instruments` (
  `NAME` varchar(128) NOT NULL COMMENT 'Instrument name',
  `ENABLED` enum('YES','NO') NOT NULL COMMENT 'Whether or not the instrument is enabled. It can be disabled, and the instrument will produce no events.',
  `TIMED` enum('YES','NO') NOT NULL COMMENT 'Whether or not the instrument is timed. It can be set, but if disabled, events produced by the instrument will have NULL values for the corresponding TIMER_START, TIMER_END, and TIMER_WAIT values.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.setup_objects
CREATE TABLE IF NOT EXISTS `setup_objects` (
  `OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') NOT NULL DEFAULT 'TABLE' COMMENT 'Type of object to instrument.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT '%' COMMENT 'Schema containing the object, either the literal or % for any schema.',
  `OBJECT_NAME` varchar(64) NOT NULL DEFAULT '%' COMMENT 'Name of the instrumented object, either the literal or % for any object.',
  `ENABLED` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT 'Whether the object''s events are instrumented or not. Can be disabled, in which case monitoring is not enabled for those objects.',
  `TIMED` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT 'Whether the object''s events are timed or not. Can be modified.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.setup_timers
CREATE TABLE IF NOT EXISTS `setup_timers` (
  `NAME` varchar(64) NOT NULL COMMENT 'Type of instrument the timer is used for.',
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL COMMENT 'Timer applying to the instrument type. Can be modified.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.socket_instances
CREATE TABLE IF NOT EXISTS `socket_instances` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'NAME from the setup_instruments table, and the name of the wait/io/socket/* instrument that produced the event.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Memory address of the object.',
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Thread identifier that the server assigns to each socket.',
  `SOCKET_ID` int(11) NOT NULL COMMENT 'The socket''s internal file handle.',
  `IP` varchar(64) NOT NULL COMMENT 'Client IP address. Blank for Unix socket file, otherwise an IPv4 or IPv6 address. Together with the PORT identifies the connection.',
  `PORT` int(11) NOT NULL COMMENT 'TCP/IP port number, from 0 to 65535. Together with the IP identifies the connection.',
  `STATE` enum('IDLE','ACTIVE') NOT NULL COMMENT 'Socket status, either IDLE if waiting to receive a request from a client, or ACTIVE'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.socket_summary_by_event_name
CREATE TABLE IF NOT EXISTS `socket_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Socket instrument.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, including RECV, RECVFROM, and RECVMSG.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) unsigned NOT NULL COMMENT 'Bytes read by read operations.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, including SEND, SENDTO, and SENDMSG.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Bytes written by write operations.',
  `COUNT_MISC` bigint(20) unsigned NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CONNECT, LISTEN, ACCEPT, CLOSE, and SHUTDOWN.',
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all miscellaneous operations that are timed.',
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all miscellaneous operations that are timed.',
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all miscellaneous operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.socket_summary_by_instance
CREATE TABLE IF NOT EXISTS `socket_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Socket instrument.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, including RECV, RECVFROM, and RECVMSG.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) unsigned NOT NULL COMMENT 'Bytes read by read operations.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, including SEND, SENDTO, and SENDMSG.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Bytes written by write operations.',
  `COUNT_MISC` bigint(20) unsigned NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CONNECT, LISTEN, ACCEPT, CLOSE, and SHUTDOWN.',
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all miscellaneous operations that are timed.',
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all miscellaneous operations that are timed.',
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all miscellaneous operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.status_by_account
CREATE TABLE IF NOT EXISTS `status_by_account` (
  `USER` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User for which the status variable is reported.',
  `HOST` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host for which the status variable is reported.',
  `VARIABLE_NAME` varchar(64) NOT NULL COMMENT 'Status variable name.',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL COMMENT 'Aggregated status variable value.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.status_by_host
CREATE TABLE IF NOT EXISTS `status_by_host` (
  `HOST` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Host for which the status variable is reported.',
  `VARIABLE_NAME` varchar(64) NOT NULL COMMENT 'Status variable name.',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL COMMENT 'Aggregated status variable value.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.status_by_thread
CREATE TABLE IF NOT EXISTS `status_by_thread` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'The thread identifier of the session in which the status variable is defined.',
  `VARIABLE_NAME` varchar(64) NOT NULL COMMENT 'Status variable name.',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL COMMENT 'Aggregated status variable value.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.status_by_user
CREATE TABLE IF NOT EXISTS `status_by_user` (
  `USER` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'User for which the status variable is reported.',
  `VARIABLE_NAME` varchar(64) NOT NULL COMMENT 'Status variable name.',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL COMMENT 'Aggregated status variable value.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.table_handles
CREATE TABLE IF NOT EXISTS `table_handles` (
  `OBJECT_TYPE` varchar(64) NOT NULL COMMENT 'The table opened by a table handle.',
  `OBJECT_SCHEMA` varchar(64) NOT NULL COMMENT 'The schema that contains the object.',
  `OBJECT_NAME` varchar(64) NOT NULL COMMENT 'The name of the instrumented object.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'The table handle address in memory.',
  `OWNER_THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The thread owning the table handle.',
  `OWNER_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The event which caused the table handle to be opened.',
  `INTERNAL_LOCK` varchar(64) DEFAULT NULL COMMENT 'The table lock used at the SQL level.',
  `EXTERNAL_LOCK` varchar(64) DEFAULT NULL COMMENT 'The table lock used at the storage engine level.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.table_io_waits_summary_by_index_usage
CREATE TABLE IF NOT EXISTS `table_io_waits_summary_by_index_usage` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'TABLE in the case of all indexes.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Schema name.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Table name.',
  `INDEX_NAME` varchar(64) DEFAULT NULL COMMENT 'Index name, or PRIMARY for the primary index, NULL for no index (inserts are counted in this case).',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events and the sum of the x_READ and x_WRITE columns.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, and the sum of the equivalent x_FETCH columns.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, and the sum of the equivalent x_INSERT, x_UPDATE and x_DELETE columns.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `COUNT_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Number of all fetch operations.',
  `SUM_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all fetch operations that are timed.',
  `MIN_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all fetch operations that are timed.',
  `AVG_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all fetch operations that are timed.',
  `MAX_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all fetch operations that are timed.',
  `COUNT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Number of all insert operations.',
  `SUM_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all insert operations that are timed.',
  `MIN_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all insert operations that are timed.',
  `AVG_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all insert operations that are timed.',
  `MAX_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all insert operations that are timed.',
  `COUNT_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Number of all update operations.',
  `SUM_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all update operations that are timed.',
  `MIN_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all update operations that are timed.',
  `AVG_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all update operations that are timed.',
  `MAX_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all update operations that are timed.',
  `COUNT_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Number of all delete operations.',
  `SUM_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all delete operations that are timed.',
  `MIN_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all delete operations that are timed.',
  `AVG_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all delete operations that are timed.',
  `MAX_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all delete operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.table_io_waits_summary_by_table
CREATE TABLE IF NOT EXISTS `table_io_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Since this table records waits by table, always set to TABLE.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Schema name.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Table name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events and the sum of the x_READ and x_WRITE columns.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, and the sum of the equivalent x_FETCH columns.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, and the sum of the equivalent x_INSERT, x_UPDATE and x_DELETE columns.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `COUNT_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Number of all fetch operations.',
  `SUM_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all fetch operations that are timed.',
  `MIN_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all fetch operations that are timed.',
  `AVG_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all fetch operations that are timed.',
  `MAX_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all fetch operations that are timed.',
  `COUNT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Number of all insert operations.',
  `SUM_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all insert operations that are timed.',
  `MIN_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all insert operations that are timed.',
  `AVG_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all insert operations that are timed.',
  `MAX_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all insert operations that are timed.',
  `COUNT_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Number of all update operations.',
  `SUM_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all update operations that are timed.',
  `MIN_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all update operations that are timed.',
  `AVG_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all update operations that are timed.',
  `MAX_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all update operations that are timed.',
  `COUNT_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Number of all delete operations.',
  `SUM_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all delete operations that are timed.',
  `MIN_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all delete operations that are timed.',
  `AVG_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all delete operations that are timed.',
  `MAX_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all delete operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.table_lock_waits_summary_by_table
CREATE TABLE IF NOT EXISTS `table_lock_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Since this table records waits by table, always set to TABLE.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Schema name.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Table name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events and the sum of the x_READ and x_WRITE columns.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, and the sum of the equivalent x_READ_NORMAL, x_READ_WITH_SHARED_LOCKS, x_READ_HIGH_PRIORITY and x_READ_NO_INSERT columns.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, and the sum of the equivalent x_WRITE_ALLOW_WRITE, x_WRITE_CONCURRENT_INSERT, x_WRITE_DELAYED, x_WRITE_LOW_PRIORITY and x_WRITE_NORMAL columns.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `COUNT_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read normal locks.',
  `SUM_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal read normal locks that are timed.',
  `MIN_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal read normal locks that are timed.',
  `AVG_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal read normal locks that are timed.',
  `MAX_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal read normal locks that are timed.',
  `COUNT_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read with shared locks.',
  `SUM_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal read with shared locks that are timed.',
  `MIN_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal read with shared locks that are timed.',
  `AVG_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal read with shared locks that are timed.',
  `MAX_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal read with shared locks that are timed.',
  `COUNT_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read high priority locks.',
  `SUM_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal read high priority locks that are timed.',
  `MIN_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal read high priority locks that are timed.',
  `AVG_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal read high priority locks that are timed.',
  `MAX_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal read high priority locks that are timed.',
  `COUNT_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read no insert locks.',
  `SUM_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal read no insert locks that are timed.',
  `MIN_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal read no insert locks that are timed.',
  `AVG_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal read no insert locks that are timed.',
  `MAX_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal read no insert locks that are timed.',
  `COUNT_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Number of all external read locks.',
  `SUM_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all external read locks that are timed.',
  `MIN_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all external read locks that are timed.',
  `AVG_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all external read locks that are timed.',
  `MAX_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all external read locks that are timed.',
  `COUNT_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read normal locks.',
  `SUM_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal write allow write locks that are timed.',
  `MIN_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal write allow write locks that are timed.',
  `AVG_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal write allow write locks that are timed.',
  `MAX_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal write allow write locks that are timed.',
  `COUNT_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal concurrent insert write locks.',
  `SUM_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal concurrent insert write locks that are timed.',
  `MIN_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal concurrent insert write locks that are timed.',
  `AVG_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal concurrent insert write locks that are timed.',
  `MAX_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal concurrent insert write locks that are timed.',
  `COUNT_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal write delayed locks.',
  `SUM_TIMER_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal write delayed locks that are timed.',
  `MIN_TIMER_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal write delayed locks that are timed.',
  `AVG_TIMER_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal write delayed locks that are timed.',
  `MAX_TIMER_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal write delayed locks that are timed.',
  `COUNT_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal write low priority locks.',
  `SUM_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal write low priority locks that are timed.',
  `MIN_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal write low priority locks that are timed.',
  `AVG_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal write low priority locks that are timed.',
  `MAX_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal write low priority locks that are timed.',
  `COUNT_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal write normal locks.',
  `SUM_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal write normal locks that are timed.',
  `MIN_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal write normal locks that are timed.',
  `AVG_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal write normal locks that are timed.',
  `MAX_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal write normal locks that are timed.',
  `COUNT_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Number of all external write locks.',
  `SUM_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all external write locks that are timed.',
  `MIN_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all external write locks that are timed.',
  `AVG_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all external write locks that are timed.',
  `MAX_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all external write locks that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.threads
CREATE TABLE IF NOT EXISTS `threads` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'A unique thread identifier.',
  `NAME` varchar(128) NOT NULL COMMENT 'Name associated with the server''s thread instrumentation code, for example thread/sql/main for the server''s main() function, and thread/sql/one_connection for a user connection.',
  `TYPE` varchar(10) NOT NULL COMMENT 'FOREGROUND or BACKGROUND, depending on the thread type. User connection threads are FOREGROUND, internal server threads are BACKGROUND.',
  `PROCESSLIST_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
  `PROCESSLIST_USER` varchar(128) DEFAULT NULL COMMENT 'Foreground thread user, or NULL for a background thread.',
  `PROCESSLIST_HOST` varchar(255) DEFAULT NULL COMMENT 'Foreground thread host, or NULL for a background thread.',
  `PROCESSLIST_DB` varchar(64) DEFAULT NULL COMMENT 'Thread''s default database, or NULL if none exists.',
  `PROCESSLIST_COMMAND` varchar(16) DEFAULT NULL COMMENT 'Type of command executed by the thread. These correspond to the the COM_xxx client/server protocol commands, and the Com_xxx status variables. See Thread Command Values.',
  `PROCESSLIST_TIME` bigint(20) DEFAULT NULL COMMENT 'Time in seconds the thread has been in its current state.',
  `PROCESSLIST_STATE` varchar(64) DEFAULT NULL COMMENT 'Action, event or state indicating what the thread is doing.',
  `PROCESSLIST_INFO` longtext DEFAULT NULL COMMENT 'Statement being executed by the thread, or NULL if a statement is not being executed. If a statement results in calling other statements, such as for a stored procedure, the innermost statement from the stored procedure is shown here.',
  `PARENT_THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'THREAD_ID of the parent thread, if any. Subthreads can for example be spawned as a result of INSERT DELAYED statements.',
  `ROLE` varchar(64) DEFAULT NULL COMMENT 'Unused.',
  `INSTRUMENTED` enum('YES','NO') NOT NULL COMMENT 'YES or NO for Whether the thread is instrumented or not. For foreground threads, the initial value is determined by whether there''s a user/host match in the setup_actors table. Subthreads are again matched, while for background threads, this will be set to YES by default. To monitor events that the thread executes, INSTRUMENTED must be YES and the thread_instrumentation consumer in the setup_consumers table must also be YES.',
  `HISTORY` enum('YES','NO') NOT NULL COMMENT 'Whether to log historical events for the thread.',
  `CONNECTION_TYPE` varchar(16) DEFAULT NULL COMMENT 'The protocol used to establish the connection, or NULL for background threads.',
  `THREAD_OS_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The thread or task identifier as defined by the underlying operating system, if there is one.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.users
CREATE TABLE IF NOT EXISTS `users` (
  `USER` char(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'The connection''s client user name for the connection, or NULL if an internal thread.',
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Current connections for the user.',
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Total connections for the user.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table performance_schema.user_variables_by_thread
CREATE TABLE IF NOT EXISTS `user_variables_by_thread` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'The thread identifier of the session in which the variable is defined.',
  `VARIABLE_NAME` varchar(64) NOT NULL COMMENT 'The variable name, without the leading @ character.',
  `VARIABLE_VALUE` longblob DEFAULT NULL COMMENT 'The variable value'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Data exporting was unselected.


-- Dumping database structure for sys
CREATE DATABASE IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `sys`;

-- Dumping structure for procedure sys.create_synonym_db
DELIMITER //
CREATE PROCEDURE `create_synonym_db`(
        IN in_db_name VARCHAR(64),
        IN in_synonym VARCHAR(64)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a source database name and synonym name, and then creates the\n             synonym database with views that point to all of the tables within\n             the source database.\n             Useful for creating a "ps" synonym for "performance_schema",\n             or "is" instead of "information_schema", for example.\n             Parameters\n             in_db_name (VARCHAR(64)):\n               The database name that you would like to create a synonym for.\n             in_synonym (VARCHAR(64)):\n               The database synonym name.\n             Example\n             mysql> SHOW DATABASES;\n             +--------------------+\n             | Database           |\n             +--------------------+\n             | information_schema |\n             | mysql              |\n             | performance_schema |\n             | sys                |\n             | test               |\n             +--------------------+\n             5 rows in set (0.00 sec)\n             mysql> CALL sys.create_synonym_db(''performance_schema'', ''ps'');\n             +---------------------------------------+\n             | summary                               |\n             +---------------------------------------+\n             | Created 74 views in the `ps` database |\n             +---------------------------------------+\n             1 row in set (8.57 sec)\n             Query OK, 0 rows affected (8.57 sec)\n             mysql> SHOW DATABASES;\n             +--------------------+\n             | Database           |\n             +--------------------+\n             | information_schema |\n             | mysql              |\n             | performance_schema |\n             | ps                 |\n             | sys                |\n             | test               |\n             +--------------------+\n             6 rows in set (0.00 sec)\n             mysql> SHOW FULL TABLES FROM ps;\n             +------------------------------------------------------+------------+\n             | Tables_in_ps                                         | Table_type |\n             +------------------------------------------------------+------------+\n             | accounts                                             | VIEW       |\n             | cond_instances                                       | VIEW       |\n             | events_stages_current                                | VIEW       |\n             | events_stages_history                                | VIEW       |\n             ...\n            '
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_db_name_check VARCHAR(64);
    DECLARE v_db_err_msg TEXT;
    DECLARE v_table VARCHAR(64);
    DECLARE v_views_created INT DEFAULT 0;
    DECLARE v_table_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') DEFAULT '';
    DECLARE v_temp_table TEXT;
    DECLARE c_table_names CURSOR FOR
        SELECT TABLE_NAME
          FROM INFORMATION_SCHEMA.TABLES
         WHERE TABLE_SCHEMA = in_db_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    SELECT SCHEMA_NAME INTO v_db_name_check
      FROM INFORMATION_SCHEMA.SCHEMATA
     WHERE SCHEMA_NAME = in_db_name;
    IF v_db_name_check IS NULL THEN
        SET v_db_err_msg = CONCAT('Unknown database ', in_db_name);
        SIGNAL SQLSTATE 'HY000'
            SET MESSAGE_TEXT = v_db_err_msg;
    END IF;
    SELECT SCHEMA_NAME INTO v_db_name_check
      FROM INFORMATION_SCHEMA.SCHEMATA
     WHERE SCHEMA_NAME = in_synonym;
    IF v_db_name_check = in_synonym THEN
        SET v_db_err_msg = CONCAT('Can\'t create database ', in_synonym, '; database exists');
        SIGNAL SQLSTATE 'HY000'
            SET MESSAGE_TEXT = v_db_err_msg;
    END IF;
    SET @create_db_stmt := CONCAT('CREATE DATABASE ', sys.quote_identifier(in_synonym));
    PREPARE create_db_stmt FROM @create_db_stmt;
    EXECUTE create_db_stmt;
    DEALLOCATE PREPARE create_db_stmt;
    SET v_done = FALSE;
    OPEN c_table_names;
    c_table_names: LOOP
        FETCH c_table_names INTO v_table;
        IF v_done THEN
            LEAVE c_table_names;
        END IF;
        CALL sys.table_exists(in_db_name, v_table, v_table_exists);
        IF (v_table_exists = 'TEMPORARY') THEN
            SET v_temp_table =
            CONCAT(
                'Table',
                 sys.quote_identifier(in_db_name),
                 '.',
                 sys.quote_identifier(v_table),
                 'shadows base table. View cannot be created! Terminating!');
             SIGNAL SQLSTATE 'HY000'
                 SET MESSAGE_TEXT = v_temp_table;
             LEAVE c_table_names;
        END IF;
        SET @create_view_stmt = CONCAT(
            'CREATE SQL SECURITY INVOKER VIEW ',
            sys.quote_identifier(in_synonym),
            '.',
            sys.quote_identifier(v_table),
            ' AS SELECT * FROM ',
            sys.quote_identifier(in_db_name),
            '.',
            sys.quote_identifier(v_table)
        );
        PREPARE create_view_stmt FROM @create_view_stmt;
        EXECUTE create_view_stmt;
        DEALLOCATE PREPARE create_view_stmt;
        SET v_views_created = v_views_created + 1;
    END LOOP;
    CLOSE c_table_names;
    SELECT CONCAT(
        'Created ', v_views_created, ' view',
        IF(v_views_created != 1, 's', ''), ' in the ',
        sys.quote_identifier(in_synonym), ' database'
    ) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.diagnostics
DELIMITER //
CREATE PROCEDURE `diagnostics`(
        IN in_max_runtime int unsigned, IN in_interval int unsigned,
        IN in_auto_config enum ('current', 'medium', 'full')
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Create a report of the current status of the server for diagnostics purposes. Data collected includes (some items depends on versions and settings):\n                * The GLOBAL VARIABLES\n                * Several sys schema views including metrics or equivalent (depending on version and settings)\n                * Queries in the 95th percentile\n                * Several ndbinfo views for MySQL Cluster\n                * Replication (both master and slave) information.\n             Some of the sys schema views are calculated as initial (optional), overall, delta:\n                * The initial view is the content of the view at the start of this procedure.\n                  This output will be the same as the the start values used for the delta view.\n                  The initial view is included if @sys.diagnostics.include_raw = ''ON''.\n                * The overall view is the content of the view at the end of this procedure.\n                  This output is the same as the end values used for the delta view.\n                  The overall view is always included.\n                * The delta view is the difference from the beginning to the end. Note that for min and max values\n                  they are simply the min or max value from the end view respectively, so does not necessarily reflect\n                  the minimum/maximum value in the monitored period.\n                  Note: except for the metrics views the delta is only calculation between the first and last outputs.\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Versions supported:\n                * MySQL 5.6: 5.6.10 and later\n                * MySQL 5.7: 5.7.9 and later\n             Parameters\n             in_max_runtime (INT UNSIGNED):\n               The maximum time to keep collecting data.\n               Use NULL to get the default which is 60 seconds, otherwise enter a value greater than 0.\n             in_interval (INT UNSIGNED):\n               How long to sleep between data collections.\n               Use NULL to get the default which is 30 seconds, otherwise enter a value greater than 0.\n             in_auto_config (ENUM(''current'', ''medium'', ''full''))\n               Automatically enable Performance Schema instruments and consumers.\n               NOTE: The more that are enabled, the more impact on the performance.\n               Supported values are:\n                  * current - use the current settings.\n                  * medium - enable some settings.\n                  * full - enables all settings. This will have a big impact on the\n                           performance - be careful using this option.\n               If another setting the ''current'' is chosen, the current settings\n               are restored at the end of the procedure.\n             Configuration Options\n             sys.diagnostics.allow_i_s_tables\n               Specifies whether it is allowed to do table scan queries on information_schema.TABLES. This can be expensive if there\n               are many tables. Set to ''ON'' to allow, ''OFF'' to not allow.\n               Default is ''OFF''.\n             sys.diagnostics.include_raw\n               Set to ''ON'' to include the raw data (e.g. the original output of "SELECT * FROM sys.metrics").\n               Use this to get the initial values of the various views.\n               Default is ''OFF''.\n             sys.statement_truncate_len\n               How much of queries in the process list output to include.\n               Default is 64.\n             sys.debug\n               Whether to provide debugging output.\n               Default is ''OFF''. Set to ''ON'' to include.\n             Example\n             To create a report and append it to the file diag.out:\n             mysql> TEE diag.out;\n             mysql> CALL sys.diagnostics(120, 30, ''current'');\n             ...\n             mysql> NOTEE;\n            '
BEGIN
    DECLARE v_start, v_runtime, v_iter_start, v_sleep DECIMAL(20,2) DEFAULT 0.0;
    DECLARE v_has_innodb, v_has_ndb, v_has_ps, v_has_replication, v_has_ps_replication VARCHAR(8) CHARSET utf8 DEFAULT 'NO';
    DECLARE v_this_thread_enabled, v_has_ps_vars, v_has_metrics ENUM('YES', 'NO');
    DECLARE v_table_name, v_banner VARCHAR(64) CHARSET utf8;
    DECLARE v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from, v_no_delta_names TEXT;
    DECLARE v_output_time, v_output_time_prev DECIMAL(20,3) UNSIGNED;
    DECLARE v_output_count, v_count, v_old_group_concat_max_len INT UNSIGNED DEFAULT 0;
    DECLARE v_status_summary_width TINYINT UNSIGNED DEFAULT 50;
    DECLARE v_done BOOLEAN DEFAULT FALSE;
    DECLARE c_ndbinfo CURSOR FOR
        SELECT TABLE_NAME
          FROM information_schema.TABLES
         WHERE TABLE_SCHEMA = 'ndbinfo'
               AND TABLE_NAME NOT IN (
                  'blocks',
                  'config_params',
                  'dict_obj_types',
                  'disk_write_speed_base',
                  'memory_per_fragment',
                  'memoryusage',
                  'operations_per_fragment',
                  'threadblocks'
               );
    DECLARE c_sysviews_w_delta CURSOR FOR
        SELECT table_name
          FROM tmp_sys_views_delta
         ORDER BY table_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    END IF;
    IF (in_max_runtime < in_interval) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_max_runtime must be greater than or equal to in_interval';
    END IF;
    IF (in_max_runtime = 0) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_max_runtime must be greater than 0';
    END IF;
    IF (in_interval = 0) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_interval must be greater than 0';
    END IF;
    IF (@sys.diagnostics.allow_i_s_tables IS NULL) THEN
        SET @sys.diagnostics.allow_i_s_tables = sys.sys_get_config('diagnostics.allow_i_s_tables', 'OFF');
    END IF;
    IF (@sys.diagnostics.include_raw IS NULL) THEN
        SET @sys.diagnostics.include_raw      = sys.sys_get_config('diagnostics.include_raw'     , 'OFF');
    END IF;
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug                        = sys.sys_get_config('debug'                       , 'OFF');
    END IF;
    IF (@sys.statement_truncate_len IS NULL) THEN
        SET @sys.statement_truncate_len       = sys.sys_get_config('statement_truncate_len'      , '64' );
    END IF;
    SET @log_bin := @@sql_log_bin;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = 0;
    END IF;
    SET v_no_delta_names = CONCAT('s%{COUNT}.Variable_name NOT IN (',
        '''innodb_buffer_pool_pages_total'', ',
        '''innodb_page_size'', ',
        '''last_query_cost'', ',
        '''last_query_partial_plans'', ',
        '''qcache_total_blocks'', ',
        '''slave_last_heartbeat'', ',
        '''ssl_ctx_verify_depth'', ',
        '''ssl_ctx_verify_mode'', ',
        '''ssl_session_cache_size'', ',
        '''ssl_verify_depth'', ',
        '''ssl_verify_mode'', ',
        '''ssl_version'', ',
        '''buffer_flush_lsn_avg_rate'', ',
        '''buffer_flush_pct_for_dirty'', ',
        '''buffer_flush_pct_for_lsn'', ',
        '''buffer_pool_pages_total'', ',
        '''lock_row_lock_time_avg'', ',
        '''lock_row_lock_time_max'', ',
        '''innodb_page_size''',
    ')');
    IF (in_auto_config <> 'current') THEN
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('Updating Performance Schema configuration to ', in_auto_config) AS 'Debug';
        END IF;
        CALL sys.ps_setup_save(0);
        IF (in_auto_config = 'medium') THEN
            UPDATE performance_schema.setup_consumers
                SET ENABLED = 'YES'
            WHERE NAME NOT LIKE '%\_history%';
            UPDATE performance_schema.setup_instruments
                SET ENABLED = 'YES',
                    TIMED   = 'YES'
            WHERE NAME NOT LIKE 'wait/synch/%';
        ELSEIF (in_auto_config = 'full') THEN
            UPDATE performance_schema.setup_consumers
                SET ENABLED = 'YES';
            UPDATE performance_schema.setup_instruments
                SET ENABLED = 'YES',
                    TIMED   = 'YES';
        END IF;
        UPDATE performance_schema.threads
           SET INSTRUMENTED = 'YES'
         WHERE PROCESSLIST_ID <> CONNECTION_ID();
    END IF;
    SET v_start        = UNIX_TIMESTAMP(NOW(2)),
        in_interval    = IFNULL(in_interval, 30),
        in_max_runtime = IFNULL(in_max_runtime, 60);
    SET v_banner = REPEAT(
                      '-',
                      LEAST(
                         GREATEST(
                            36,
                            CHAR_LENGTH(VERSION()),
                            CHAR_LENGTH(@@global.version_comment),
                            CHAR_LENGTH(@@global.version_compile_os),
                            CHAR_LENGTH(@@global.version_compile_machine),
                            CHAR_LENGTH(@@global.socket),
                            CHAR_LENGTH(@@global.datadir)
                         ),
                         64
                      )
                   );
    SELECT 'Hostname' AS 'Name', @@global.hostname AS 'Value'
    UNION ALL
    SELECT 'Port' AS 'Name', @@global.port AS 'Value'
    UNION ALL
    SELECT 'Socket' AS 'Name', @@global.socket AS 'Value'
    UNION ALL
    SELECT 'Datadir' AS 'Name', @@global.datadir AS 'Value'
    UNION ALL
    SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value'
    UNION ALL
    SELECT 'MySQL Version' AS 'Name', VERSION() AS 'Value'
    UNION ALL
    SELECT 'Sys Schema Version' AS 'Name', (SELECT sys_version FROM sys.version) AS 'Value'
    UNION ALL
    SELECT 'Version Comment' AS 'Name', @@global.version_comment AS 'Value'
    UNION ALL
    SELECT 'Version Compile OS' AS 'Name', @@global.version_compile_os AS 'Value'
    UNION ALL
    SELECT 'Version Compile Machine' AS 'Name', @@global.version_compile_machine AS 'Value'
    UNION ALL
    SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value'
    UNION ALL
    SELECT 'UTC Time' AS 'Name', UTC_TIMESTAMP() AS 'Value'
    UNION ALL
    SELECT 'Local Time' AS 'Name', NOW() AS 'Value'
    UNION ALL
    SELECT 'Time Zone' AS 'Name', @@global.time_zone AS 'Value'
    UNION ALL
    SELECT 'System Time Zone' AS 'Name', @@global.system_time_zone AS 'Value'
    UNION ALL
    SELECT 'Time Zone Offset' AS 'Name', TIMEDIFF(NOW(), UTC_TIMESTAMP()) AS 'Value';
    SET v_has_innodb         = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'InnoDB'), 'NO'),
        v_has_ndb            = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'NDBCluster'), 'NO'),
        v_has_ps             = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'PERFORMANCE_SCHEMA'), 'NO'),
        v_has_ps_replication = IF(v_has_ps = 'YES'
                                   AND EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'replication_applier_status'),
                                   'YES',
                                   'NO'
                               ),
        v_has_replication    = 'MAYBE',
        v_has_metrics        = IF(v_has_ps = 'YES' OR (sys.version_major() = 5 AND sys.version_minor() = 6), 'YES', 'NO'),
        v_has_ps_vars        = 'NO';
    
    
    IF (@sys.debug = 'ON') THEN
       SELECT v_has_innodb AS 'Has_InnoDB', v_has_ndb AS 'Has_NDBCluster',
              v_has_ps AS 'Has_Performance_Schema', v_has_ps_vars AS 'Has_P_S_SHOW_Variables',
              v_has_metrics AS 'Has_metrics',
              v_has_ps_replication 'AS Has_P_S_Replication', v_has_replication AS 'Has_Replication';
    END IF;
    IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
        SET @sys.diagnostics.sql = 'SHOW ENGINE InnoDB STATUS';
        PREPARE stmt_innodb_status FROM @sys.diagnostics.sql;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SET @sys.diagnostics.sql = 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS';
        PREPARE stmt_ps_status FROM @sys.diagnostics.sql;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
        SET @sys.diagnostics.sql = 'SHOW ENGINE NDBCLUSTER STATUS';
        PREPARE stmt_ndbcluster_status FROM @sys.diagnostics.sql;
    END IF;
    SET @sys.diagnostics.sql_gen_query_template = 'SELECT CONCAT(
           ''SELECT '',
           GROUP_CONCAT(
               CASE WHEN (SUBSTRING(TABLE_NAME, 3), COLUMN_NAME) IN (
                                (''io_global_by_file_by_bytes'', ''total''),
                                (''io_global_by_wait_by_bytes'', ''total_requested'')
                         )
                         THEN CONCAT(''sys.format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -8) = ''_latency''
                         THEN CONCAT(''sys.format_time('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated''
                         OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'')
                         THEN CONCAT(''sys.format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    ELSE COLUMN_NAME
               END
               ORDER BY ORDINAL_POSITION
               SEPARATOR '',\n       ''
           ),
           ''\n  FROM tmp_'', SUBSTRING(TABLE_NAME FROM 3), ''_%{OUTPUT}''
       ) AS Query INTO @sys.diagnostics.sql_select
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = ''sys'' AND TABLE_NAME = ?
 GROUP BY TABLE_NAME';
    SET @sys.diagnostics.sql_gen_query_delta = 'SELECT CONCAT(
           ''SELECT '',
           GROUP_CONCAT(
               CASE WHEN FIND_IN_SET(COLUMN_NAME, diag.pk)
                         THEN COLUMN_NAME
                    WHEN diag.TABLE_NAME = ''io_global_by_file_by_bytes'' AND COLUMN_NAME = ''write_pct''
                         THEN CONCAT(''IFNULL(ROUND(100-(((e.total_read-IFNULL(s.total_read, 0))'',
                                     ''/NULLIF(((e.total_read-IFNULL(s.total_read, 0))+(e.total_written-IFNULL(s.total_written, 0))), 0))*100), 2), 0.00) AS '',
                                     COLUMN_NAME)
                    WHEN (diag.TABLE_NAME, COLUMN_NAME) IN (
                                (''io_global_by_file_by_bytes'', ''total''),
                                (''io_global_by_wait_by_bytes'', ''total_requested'')
                         )
                         THEN CONCAT(''sys.format_bytes(e.'', COLUMN_NAME, ''-IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, 1, 4) IN (''max_'', ''min_'') AND SUBSTRING(COLUMN_NAME, -8) = ''_latency''
                         THEN CONCAT(''sys.format_time(e.'', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME = ''avg_latency''
                         THEN CONCAT(''sys.format_time((e.total_latency - IFNULL(s.total_latency, 0))'',
                                     ''/NULLIF(e.total - IFNULL(s.total, 0), 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -12) = ''_avg_latency''
                         THEN CONCAT(''sys.format_time((e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency, 0))'',
                                     ''/NULLIF(e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s, 0), 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -8) = ''_latency''
                         THEN CONCAT(''sys.format_time(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME IN (''avg_read'', ''avg_write'', ''avg_written'')
                         THEN CONCAT(''sys.format_bytes(IFNULL((e.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), ''-IFNULL(s.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), '', 0))'',
                                     ''/NULLIF(e.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), ''-IFNULL(s.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), '', 0), 0), 0)) AS '',
                                     COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated''
                         OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'')
                         THEN CONCAT(''sys.format_bytes(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    ELSE CONCAT(''(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
               END
               ORDER BY ORDINAL_POSITION
               SEPARATOR '',\n       ''
           ),
           ''\n  FROM tmp_'', diag.TABLE_NAME, ''_end e
       LEFT OUTER JOIN tmp_'', diag.TABLE_NAME, ''_start s USING ('', diag.pk, '')''
       ) AS Query INTO @sys.diagnostics.sql_select
  FROM tmp_sys_views_delta diag
       INNER JOIN information_schema.COLUMNS c ON c.TABLE_NAME = CONCAT(''x$'', diag.TABLE_NAME)
 WHERE c.TABLE_SCHEMA = ''sys'' AND diag.TABLE_NAME = ?
 GROUP BY diag.TABLE_NAME';
    IF (v_has_ps = 'YES') THEN
        DROP TEMPORARY TABLE IF EXISTS tmp_sys_views_delta;
        CREATE TEMPORARY TABLE tmp_sys_views_delta (
            TABLE_NAME varchar(64) NOT NULL,
            order_by text COMMENT 'ORDER BY clause for the initial and overall views',
            order_by_delta text COMMENT 'ORDER BY clause for the delta views',
            where_delta text COMMENT 'WHERE clause to use for delta views to only include rows with a "count" > 0',
            limit_rows int unsigned COMMENT 'The maximum number of rows to include for the view',
            pk varchar(128) COMMENT 'Used with the FIND_IN_SET() function so use comma separated list without whitespace',
            PRIMARY KEY (TABLE_NAME)
        );
        IF (@sys.debug = 'ON') THEN
            SELECT 'Populating tmp_sys_views_delta' AS 'Debug';
        END IF;
        INSERT INTO tmp_sys_views_delta
        VALUES ('host_summary'                       , '%{TABLE}.statement_latency DESC',
                                                       '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC',
                                                       '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'host'),
               ('host_summary_by_file_io'            , '%{TABLE}.io_latency DESC',
                                                       '(e.io_latency-IFNULL(s.io_latency, 0)) DESC',
                                                       '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'host'),
               ('host_summary_by_file_io_type'       , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'),
               ('host_summary_by_stages'             , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'),
               ('host_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host'),
               ('host_summary_by_statement_type'     , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,statement'),
               ('io_by_thread_by_latency'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,thread_id,processlist_id'),
               ('io_global_by_file_by_bytes'         , '%{TABLE}.total DESC',
                                                       '(e.total-IFNULL(s.total, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'),
               ('io_global_by_file_by_latency'       , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'),
               ('io_global_by_wait_by_bytes'         , '%{TABLE}.total_requested DESC',
                                                       '(e.total_requested-IFNULL(s.total_requested, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'),
               ('io_global_by_wait_by_latency'       , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'),
               ('schema_index_statistics'            , '(%{TABLE}.select_latency+%{TABLE}.insert_latency+%{TABLE}.update_latency+%{TABLE}.delete_latency) DESC',
                                                       '((e.select_latency+e.insert_latency+e.update_latency+e.delete_latency)-IFNULL(s.select_latency+s.insert_latency+s.update_latency+s.delete_latency, 0)) DESC',
                                                       '((e.rows_selected+e.insert_latency+e.rows_updated+e.rows_deleted)-IFNULL(s.rows_selected+s.rows_inserted+s.rows_updated+s.rows_deleted, 0)) > 0',
                                                       100, 'table_schema,table_name,index_name'),
               ('schema_table_statistics'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) > 0', 100, 'table_schema,table_name'),
               ('schema_tables_with_full_table_scans', '%{TABLE}.rows_full_scanned DESC',
                                                       '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) DESC',
                                                       '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) > 0', 100, 'object_schema,object_name'),
               ('user_summary'                       , '%{TABLE}.statement_latency DESC',
                                                       '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC',
                                                       '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'user'),
               ('user_summary_by_file_io'            , '%{TABLE}.io_latency DESC',
                                                       '(e.io_latency-IFNULL(s.io_latency, 0)) DESC',
                                                       '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'user'),
               ('user_summary_by_file_io_type'       , '%{TABLE}.user, %{TABLE}.latency DESC',
                                                       'e.user, (e.latency-IFNULL(s.latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'),
               ('user_summary_by_stages'             , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'),
               ('user_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user'),
               ('user_summary_by_statement_type'     , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,statement'),
               ('wait_classes_global_by_avg_latency' , 'IFNULL(%{TABLE}.total_latency / NULLIF(%{TABLE}.total, 0), 0) DESC',
                                                       'IFNULL((e.total_latency-IFNULL(s.total_latency, 0)) / NULLIF((e.total - IFNULL(s.total, 0)), 0), 0) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'),
               ('wait_classes_global_by_latency'     , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'),
               ('waits_by_host_by_latency'           , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event'),
               ('waits_by_user_by_latency'           , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event'),
               ('waits_global_by_latency'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'events')
        ;
    END IF;
    SELECT '
=======================
     Configuration
=======================
' AS '';
    SELECT 'GLOBAL VARIABLES' AS 'The following output is:';
    IF (v_has_ps_vars = 'YES') THEN
        SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM performance_schema.global_variables ORDER BY VARIABLE_NAME;
    ELSE
        SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM information_schema.GLOBAL_VARIABLES ORDER BY VARIABLE_NAME;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT 'Performance Schema Setup - Actors' AS 'The following output is:';
        SELECT * FROM performance_schema.setup_actors;
        SELECT 'Performance Schema Setup - Consumers' AS 'The following output is:';
        SELECT NAME AS Consumer, ENABLED, sys.ps_is_consumer_enabled(NAME) AS COLLECTS
          FROM performance_schema.setup_consumers;
        SELECT 'Performance Schema Setup - Instruments' AS 'The following output is:';
        SELECT SUBSTRING_INDEX(NAME, '/', 2) AS 'InstrumentClass',
               ROUND(100*SUM(IF(ENABLED = 'YES', 1, 0))/COUNT(*), 2) AS 'EnabledPct',
               ROUND(100*SUM(IF(TIMED = 'YES', 1, 0))/COUNT(*), 2) AS 'TimedPct'
          FROM performance_schema.setup_instruments
         GROUP BY SUBSTRING_INDEX(NAME, '/', 2)
         ORDER BY SUBSTRING_INDEX(NAME, '/', 2);
        SELECT 'Performance Schema Setup - Objects' AS 'The following output is:';
        SELECT * FROM performance_schema.setup_objects;
        SELECT 'Performance Schema Setup - Threads' AS 'The following output is:';
        SELECT `TYPE` AS ThreadType, COUNT(*) AS 'Total', ROUND(100*SUM(IF(INSTRUMENTED = 'YES', 1, 0))/COUNT(*), 2) AS 'InstrumentedPct'
          FROM performance_schema.threads
        GROUP BY TYPE;
    END IF;
    IF (v_has_replication = 'NO') THEN
        SELECT 'No Replication Configured' AS 'Replication Status';
    ELSE
        SELECT CONCAT('Replication Configured: ', v_has_replication, ' - Performance Schema Replication Tables: ', v_has_ps_replication) AS 'Replication Status';
        IF (v_has_ps_replication = 'YES') THEN
            SELECT 'Replication - Connection Configuration' AS 'The following output is:';
            SELECT * FROM performance_schema.replication_connection_configuration;
        END IF;
        IF (v_has_ps_replication = 'YES') THEN
            SELECT 'Replication - Applier Configuration' AS 'The following output is:';
            SELECT * FROM performance_schema.replication_applier_configuration ORDER BY CHANNEL_NAME;
        END IF;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
       SELECT 'Cluster Thread Blocks' AS 'The following output is:';
       SELECT * FROM ndbinfo.threadblocks;
    END IF;
    IF (v_has_ps = 'YES') THEN
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SELECT '
========================
     Initial Status
========================
' AS '';
        END IF;
        DROP TEMPORARY TABLE IF EXISTS tmp_digests_start;
        CALL sys.statement_performance_analyzer('create_tmp', 'tmp_digests_start', NULL);
        CALL sys.statement_performance_analyzer('snapshot', NULL, NULL);
        CALL sys.statement_performance_analyzer('save', 'tmp_digests_start', NULL);
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'start');
            IF (@sys.debug = 'ON') THEN
                SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug';
                SELECT @sys.diagnostics.sql AS 'Debug';
            END IF;
            PREPARE stmt_gen_query FROM @sys.diagnostics.sql;
        END IF;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            IF (@sys.debug = 'ON') THEN
                SELECT CONCAT('The following queries are for storing the initial content of ', v_table_name) AS 'Debug';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_start`'));
            CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_start` SELECT * FROM `sys`.`x$', v_table_name, '`'));
            IF (@sys.diagnostics.include_raw = 'ON') THEN
                SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name);
                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;
                SELECT CONCAT(@sys.diagnostics.sql_select,
                              IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_start'))), ''),
                              IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                       )
                  INTO @sys.diagnostics.sql_select
                  FROM tmp_sys_views_delta
                 WHERE TABLE_NAME = v_table_name;
                SELECT CONCAT('Initial ', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            END IF;
        END LOOP;
        CLOSE c_sysviews_w_delta;
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            DEALLOCATE PREPARE stmt_gen_query;
        END IF;
    END IF;
    SET v_sql_status_summary_select = 'SELECT Variable_name',
        v_sql_status_summary_delta  = '',
        v_sql_status_summary_from   = '';
    REPEAT
        SET v_output_count = v_output_count + 1;
        IF (v_output_count > 1) THEN
            SET v_sleep = in_interval-(UNIX_TIMESTAMP(NOW(2))-v_iter_start);
            SELECT NOW() AS 'Time', CONCAT('Going to sleep for ', v_sleep, ' seconds. Please do not interrupt') AS 'The following output is:';
            DO SLEEP(in_interval);
        END IF;
        SET v_iter_start = UNIX_TIMESTAMP(NOW(2));
        SELECT NOW(), CONCAT('Iteration Number ', IFNULL(v_output_count, 'NULL')) AS 'The following output is:';
        IF (@@log_bin = 1) THEN
            SELECT 'SHOW MASTER STATUS' AS 'The following output is:';
            SHOW MASTER STATUS;
        END IF;
        IF (v_has_replication <> 'NO') THEN
            SELECT 'SHOW SLAVE STATUS' AS 'The following output is:';
            SHOW SLAVE STATUS;
        END IF;
        SET v_table_name = CONCAT('tmp_metrics_', v_output_count);
        CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));
        CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE ', v_table_name, ' (
  Variable_name VARCHAR(193) NOT NULL,
  Variable_value VARCHAR(1024),
  Type VARCHAR(100) NOT NULL,
  Enabled ENUM(''YES'', ''NO'', ''PARTIAL'') NOT NULL,
  PRIMARY KEY (Type, Variable_name)
) ENGINE = InnoDB DEFAULT CHARSET=utf8'));
        IF (v_has_metrics) THEN
            SET @sys.diagnostics.sql = CONCAT(
                'INSERT INTO ', v_table_name,
                ' SELECT Variable_name, REPLACE(Variable_value, ''\n'', ''\\\\n'') AS Variable_value, Type, Enabled FROM sys.metrics'
            );
        ELSE
            SET @sys.diagnostics.sql = CONCAT(
                'INSERT INTO ', v_table_name,
                '(SELECT LOWER(VARIABLE_NAME) AS Variable_name, REPLACE(VARIABLE_VALUE, ''\n'', ''\\\\n'') AS Variable_value,
                         ''Global Status'' AS Type, ''YES'' AS Enabled
  FROM performance_schema.global_status
) UNION ALL (
SELECT NAME AS Variable_name, COUNT AS Variable_value,
       CONCAT(''InnoDB Metrics - '', SUBSYSTEM) AS Type,
       IF(STATUS = ''enabled'', ''YES'', ''NO'') AS Enabled
  FROM information_schema.INNODB_METRICS
 WHERE NAME NOT IN (
     ''lock_row_lock_time'', ''lock_row_lock_time_avg'', ''lock_row_lock_time_max'', ''lock_row_lock_waits'',
     ''buffer_pool_reads'', ''buffer_pool_read_requests'', ''buffer_pool_write_requests'', ''buffer_pool_wait_free'',
     ''buffer_pool_read_ahead'', ''buffer_pool_read_ahead_evicted'', ''buffer_pool_pages_total'', ''buffer_pool_pages_misc'',
     ''buffer_pool_pages_data'', ''buffer_pool_bytes_data'', ''buffer_pool_pages_dirty'', ''buffer_pool_bytes_dirty'',
     ''buffer_pool_pages_free'', ''buffer_pages_created'', ''buffer_pages_written'', ''buffer_pages_read'',
     ''buffer_data_reads'', ''buffer_data_written'', ''file_num_open_files'',
     ''os_log_bytes_written'', ''os_log_fsyncs'', ''os_log_pending_fsyncs'', ''os_log_pending_writes'',
     ''log_waits'', ''log_write_requests'', ''log_writes'', ''innodb_dblwr_writes'', ''innodb_dblwr_pages_written'', ''innodb_page_size'')
) UNION ALL (
SELECT ''NOW()'' AS Variable_name, NOW(3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled
) UNION ALL (
SELECT ''UNIX_TIMESTAMP()'' AS Variable_name, ROUND(UNIX_TIMESTAMP(NOW(3)), 3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled
)
 ORDER BY Type, Variable_name;'
            );
        END IF;
        CALL sys.execute_prepared_stmt(@sys.diagnostics.sql);
        CALL sys.execute_prepared_stmt(
            CONCAT('SELECT Variable_value INTO @sys.diagnostics.output_time FROM ', v_table_name, ' WHERE Type = ''System Time'' AND Variable_name = ''UNIX_TIMESTAMP()''')
        );
        SET v_output_time = @sys.diagnostics.output_time;
        SET v_sql_status_summary_select = CONCAT(v_sql_status_summary_select, ',
       CONCAT(
           LEFT(s', v_output_count, '.Variable_value, ', v_status_summary_width, '),
           IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'', CONCAT('' ('', ROUND(s', v_output_count, '.Variable_value/', v_output_time, ', 2), ''/sec)''), '''')
       ) AS ''Output ', v_output_count, ''''),
            v_sql_status_summary_from   = CONCAT(v_sql_status_summary_from, '
',
                                                    IF(v_output_count = 1, '  FROM ', '       INNER JOIN '),
                                                    v_table_name, ' s', v_output_count,
                                                    IF (v_output_count = 1, '', ' USING (Type, Variable_name)'));
        IF (v_output_count > 1) THEN
            SET v_sql_status_summary_delta  = CONCAT(v_sql_status_summary_delta, ',
       IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'',
          CONCAT(IF(s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'' OR s', v_output_count, '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'',
                    ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value), 2),
                    (s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)
                   ),
                 '' ('', ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)/(', v_output_time, '-', v_output_time_prev, '), 2), ''/sec)''
          ),
          ''''
       ) AS ''Delta (', (v_output_count-1), ' -> ', v_output_count, ')''');
        END IF;
        SET v_output_time_prev = v_output_time;
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            IF (v_has_metrics) THEN
                SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:';
            ELSE
                SELECT 'sys.metrics equivalent' AS 'The following output is:';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('SELECT Type, Variable_name, Enabled, Variable_value FROM ', v_table_name, ' ORDER BY Type, Variable_name'));
        END IF;
        IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
            SELECT 'SHOW ENGINE INNODB STATUS' AS 'The following output is:';
            EXECUTE stmt_innodb_status;
            SELECT 'InnoDB - Transactions' AS 'The following output is:';
            SELECT * FROM information_schema.INNODB_TRX;
        END IF;
        IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
            SELECT 'SHOW ENGINE NDBCLUSTER STATUS' AS 'The following output is:';
            EXECUTE stmt_ndbcluster_status;
            SELECT 'ndbinfo.memoryusage' AS 'The following output is:';
            SELECT node_id, memory_type, sys.format_bytes(used) AS used, used_pages, sys.format_bytes(total) AS total, total_pages,
                   ROUND(100*(used/total), 2) AS 'Used %'
            FROM ndbinfo.memoryusage;
            SET v_done = FALSE;
            OPEN c_ndbinfo;
            c_ndbinfo_loop: LOOP
                FETCH c_ndbinfo INTO v_table_name;
                IF v_done THEN
                LEAVE c_ndbinfo_loop;
                END IF;
                SELECT CONCAT('SELECT * FROM ndbinfo.', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(CONCAT('SELECT * FROM `ndbinfo`.`', v_table_name, '`'));
            END LOOP;
            CLOSE c_ndbinfo;
            SELECT * FROM information_schema.FILES;
        END IF;
        SELECT 'SELECT * FROM sys.processlist' AS 'The following output is:';
        SELECT processlist.* FROM sys.processlist;
        IF (v_has_ps = 'YES') THEN
            IF (sys.ps_is_consumer_enabled('events_waits_history_long') = 'YES') THEN
                SELECT 'SELECT * FROM sys.latest_file_io' AS 'The following output is:';
                SELECT * FROM sys.latest_file_io;
            END IF;
            IF (EXISTS(SELECT 1 FROM performance_schema.setup_instruments WHERE NAME LIKE 'memory/%' AND ENABLED = 'YES')) THEN
                SELECT 'SELECT * FROM sys.memory_by_host_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_host_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_by_thread_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_thread_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_by_user_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_user_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_global_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_global_by_current_bytes;
            END IF;
        END IF;
        SET v_runtime = (UNIX_TIMESTAMP(NOW(2)) - v_start);
    UNTIL (v_runtime + in_interval >= in_max_runtime) END REPEAT;
    IF (v_has_ps = 'YES') THEN
        SELECT 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS' AS 'The following output is:';
        EXECUTE stmt_ps_status;
    END IF;
    IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
        DEALLOCATE PREPARE stmt_innodb_status;
    END IF;
    IF (v_has_ps = 'YES') THEN
        DEALLOCATE PREPARE stmt_ps_status;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
        DEALLOCATE PREPARE stmt_ndbcluster_status;
    END IF;
    SELECT '
============================
     Schema Information
============================
' AS '';
    SELECT COUNT(*) AS 'Total Number of Tables' FROM information_schema.TABLES;
    IF (@sys.diagnostics.allow_i_s_tables = 'ON') THEN
        SELECT 'Storage Engine Usage' AS 'The following output is:';
        SELECT ENGINE, COUNT(*) AS NUM_TABLES,
                sys.format_bytes(SUM(DATA_LENGTH)) AS DATA_LENGTH,
                sys.format_bytes(SUM(INDEX_LENGTH)) AS INDEX_LENGTH,
                sys.format_bytes(SUM(DATA_LENGTH+INDEX_LENGTH)) AS TOTAL
            FROM information_schema.TABLES
            GROUP BY ENGINE;
        SELECT 'Schema Object Overview' AS 'The following output is:';
        SELECT * FROM sys.schema_object_overview;
        SELECT 'Tables without a PRIMARY KEY' AS 'The following output is:';
        SELECT TABLES.TABLE_SCHEMA, ENGINE, COUNT(*) AS NumTables
          FROM information_schema.TABLES
               LEFT OUTER JOIN information_schema.STATISTICS ON STATISTICS.TABLE_SCHEMA = TABLES.TABLE_SCHEMA
                                                                AND STATISTICS.TABLE_NAME = TABLES.TABLE_NAME
                                                                AND STATISTICS.INDEX_NAME = 'PRIMARY'
         WHERE STATISTICS.TABLE_NAME IS NULL
               AND TABLES.TABLE_SCHEMA NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys')
               AND TABLES.TABLE_TYPE = 'BASE TABLE'
         GROUP BY TABLES.TABLE_SCHEMA, ENGINE;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT 'Unused Indexes' AS 'The following output is:';
        SELECT object_schema, COUNT(*) AS NumUnusedIndexes
          FROM performance_schema.table_io_waits_summary_by_index_usage
         WHERE index_name IS NOT NULL
               AND count_star = 0
               AND object_schema NOT IN ('mysql', 'sys')
               AND index_name != 'PRIMARY'
         GROUP BY object_schema;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT '
=========================
     Overall Status
=========================
' AS '';
        SELECT 'CALL sys.ps_statement_avg_latency_histogram()' AS 'The following output is:';
        CALL sys.ps_statement_avg_latency_histogram();
        CALL sys.statement_performance_analyzer('snapshot', NULL, NULL);
        CALL sys.statement_performance_analyzer('overall', NULL, 'with_runtimes_in_95th_percentile');
        SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'end');
        IF (@sys.debug = 'ON') THEN
            SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug';
            SELECT @sys.diagnostics.sql AS 'Debug';
        END IF;
        PREPARE stmt_gen_query FROM @sys.diagnostics.sql;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            IF (@sys.debug = 'ON') THEN
                SELECT CONCAT('The following queries are for storing the final content of ', v_table_name) AS 'Debug';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_end`'));
            CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_end` SELECT * FROM `sys`.`x$', v_table_name, '`'));
            IF (@sys.diagnostics.include_raw = 'ON') THEN
                SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name);
                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;
                SELECT CONCAT(@sys.diagnostics.sql_select,
                                IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_end'))), ''),
                                IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                        )
                    INTO @sys.diagnostics.sql_select
                    FROM tmp_sys_views_delta
                    WHERE TABLE_NAME = v_table_name;
                SELECT CONCAT('Overall ', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            END IF;
        END LOOP;
        CLOSE c_sysviews_w_delta;
        DEALLOCATE PREPARE stmt_gen_query;
        SELECT '
======================
     Delta Status
======================
' AS '';
        CALL sys.statement_performance_analyzer('delta', 'tmp_digests_start', 'with_runtimes_in_95th_percentile');
        CALL sys.statement_performance_analyzer('cleanup', NULL, NULL);
        DROP TEMPORARY TABLE tmp_digests_start;
        IF (@sys.debug = 'ON') THEN
            SELECT 'The following query will be used to generate the query for each sys view delta' AS 'Debug';
            SELECT @sys.diagnostics.sql_gen_query_delta AS 'Debug';
        END IF;
        PREPARE stmt_gen_query_delta FROM @sys.diagnostics.sql_gen_query_delta;
        SET v_old_group_concat_max_len = @@session.group_concat_max_len;
        SET @@session.group_concat_max_len = 2048;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            SET @sys.diagnostics.table_name = v_table_name;
            EXECUTE stmt_gen_query_delta USING @sys.diagnostics.table_name;
            SELECT CONCAT(@sys.diagnostics.sql_select,
                            IF(where_delta IS NOT NULL, CONCAT('\n WHERE ', where_delta), ''),
                            IF(order_by_delta IS NOT NULL, CONCAT('\n ORDER BY ', order_by_delta), ''),
                            IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                    )
                INTO @sys.diagnostics.sql_select
                FROM tmp_sys_views_delta
                WHERE TABLE_NAME = v_table_name;
            SELECT CONCAT('Delta ', v_table_name) AS 'The following output is:';
            CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_end`'));
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_start`'));
        END LOOP;
        CLOSE c_sysviews_w_delta;
        SET @@session.group_concat_max_len = v_old_group_concat_max_len;
        DEALLOCATE PREPARE stmt_gen_query_delta;
        DROP TEMPORARY TABLE tmp_sys_views_delta;
    END IF;
    IF (v_has_metrics) THEN
        SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:';
    ELSE
        SELECT 'sys.metrics equivalent' AS 'The following output is:';
    END IF;
    CALL sys.execute_prepared_stmt(
        CONCAT(v_sql_status_summary_select, v_sql_status_summary_delta, ', Type, s1.Enabled', v_sql_status_summary_from,
               '
 ORDER BY Type, Variable_name'
        )
    );
    SET v_count = 0;
    WHILE (v_count < v_output_count) DO
        SET v_count = v_count + 1;
        SET v_table_name = CONCAT('tmp_metrics_', v_count);
        CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));
    END WHILE;
    IF (in_auto_config <> 'current') THEN
        CALL sys.ps_setup_reload_saved();
        SET sql_log_bin = @log_bin;
    END IF;
    SET @sys.diagnostics.output_time            = NULL,
        @sys.diagnostics.sql                    = NULL,
        @sys.diagnostics.sql_gen_query_delta    = NULL,
        @sys.diagnostics.sql_gen_query_template = NULL,
        @sys.diagnostics.sql_select             = NULL,
        @sys.diagnostics.table_name             = NULL;
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = @log_bin;
    END IF;
END//
DELIMITER ;

-- Dumping structure for procedure sys.execute_prepared_stmt
DELIMITER //
CREATE PROCEDURE `execute_prepared_stmt`(
        IN in_query longtext CHARACTER SET UTF8
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes the query in the argument and executes it using a prepared statement. The prepared statement is deallocated,\n             so the procedure is mainly useful for executing one off dynamically created queries.\n             The sys_execute_prepared_stmt prepared statement name is used for the query and is required not to exist.\n             Parameters\n             in_query (longtext CHARACTER SET UTF8):\n               The query to execute.\n             Configuration Options\n             sys.debug\n               Whether to provide debugging output.\n               Default is ''OFF''. Set to ''ON'' to include.\n             Example\n             mysql> CALL sys.execute_prepared_stmt(''SELECT * FROM sys.sys_config'');\n             +------------------------+-------+---------------------+--------+\n             | variable               | value | set_time            | set_by |\n             +------------------------+-------+---------------------+--------+\n             | statement_truncate_len | 64    | 2015-06-30 13:06:00 | NULL   |\n             +------------------------+-------+---------------------+--------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n            '
BEGIN
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug = sys.sys_get_config('debug', 'OFF');
    END IF;
    IF (in_query IS NULL OR LENGTH(in_query) < 4) THEN
       SIGNAL SQLSTATE '45000'
          SET MESSAGE_TEXT = "The @sys.execute_prepared_stmt.sql must contain a query";
    END IF;
    SET @sys.execute_prepared_stmt.sql = in_query;
    IF (@sys.debug = 'ON') THEN
        SELECT @sys.execute_prepared_stmt.sql AS 'Debug';
    END IF;
    PREPARE sys_execute_prepared_stmt FROM @sys.execute_prepared_stmt.sql;
    EXECUTE sys_execute_prepared_stmt;
    DEALLOCATE PREPARE sys_execute_prepared_stmt;
    SET @sys.execute_prepared_stmt.sql = NULL;
END//
DELIMITER ;

-- Dumping structure for function sys.extract_schema_from_file_name
DELIMITER //
CREATE FUNCTION `extract_schema_from_file_name`(path VARCHAR(512)
    ) RETURNS varchar(64) CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw file path, and attempts to extract the schema name from it.\n             Useful for when interacting with Performance Schema data\n             concerning IO statistics, for example.\n             Currently relies on the fact that a table data file will be within a\n             specified database directory (will not work with partitions or tables\n             that specify an individual DATA_DIRECTORY).\n             Parameters\n             path (VARCHAR(512)):\n               The full file path to a data file to extract the schema name from.\n             Returns\n             VARCHAR(64)\n             Example\n             mysql> SELECT sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n             +----------------------------------------------------------------------------+\n             | sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n             +----------------------------------------------------------------------------+\n             | employees                                                                  |\n             +----------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -2), '/', 1), 64);
END//
DELIMITER ;

-- Dumping structure for function sys.extract_table_from_file_name
DELIMITER //
CREATE FUNCTION `extract_table_from_file_name`(path VARCHAR(512)
    ) RETURNS varchar(64) CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw file path, and extracts the table name from it.\n             Useful for when interacting with Performance Schema data\n             concerning IO statistics, for example.\n             Parameters\n             path (VARCHAR(512)):\n               The full file path to a data file to extract the table name from.\n             Returns\n             VARCHAR(64)\n             Example\n             mysql> SELECT sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n             +---------------------------------------------------------------------------+\n             | sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n             +---------------------------------------------------------------------------+\n             | employee                                                                  |\n             +---------------------------------------------------------------------------+\n             1 row in set (0.02 sec)\n            '
BEGIN
    RETURN LEFT(SUBSTRING_INDEX(REPLACE(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -1), '@0024', '$'), '.', 1), 64);
END//
DELIMITER ;

-- Dumping structure for function sys.format_bytes
DELIMITER //
CREATE FUNCTION `format_bytes`(bytes TEXT
    ) RETURNS text CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw bytes value, and converts it to a human readable format.\n             Parameters\n             bytes (TEXT):\n               A raw bytes value.\n             Returns\n             TEXT\n             Example\n             mysql> SELECT sys.format_bytes(2348723492723746) AS size;\n             +----------+\n             | size     |\n             +----------+\n             | 2.09 PiB |\n             +----------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.format_bytes(2348723492723) AS size;\n             +----------+\n             | size     |\n             +----------+\n             | 2.14 TiB |\n             +----------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.format_bytes(23487234) AS size;\n             +-----------+\n             | size      |\n             +-----------+\n             | 22.40 MiB |\n             +-----------+\n             1 row in set (0.00 sec)\n            '
BEGIN
  IF bytes IS NULL THEN RETURN NULL;
  ELSEIF bytes >= 1125899906842624 THEN RETURN CONCAT(ROUND(bytes / 1125899906842624, 2), ' PiB');
  ELSEIF bytes >= 1099511627776 THEN RETURN CONCAT(ROUND(bytes / 1099511627776, 2), ' TiB');
  ELSEIF bytes >= 1073741824 THEN RETURN CONCAT(ROUND(bytes / 1073741824, 2), ' GiB');
  ELSEIF bytes >= 1048576 THEN RETURN CONCAT(ROUND(bytes / 1048576, 2), ' MiB');
  ELSEIF bytes >= 1024 THEN RETURN CONCAT(ROUND(bytes / 1024, 2), ' KiB');
  ELSE RETURN CONCAT(ROUND(bytes, 0), ' bytes');
  END IF;
END//
DELIMITER ;

-- Dumping structure for function sys.format_path
DELIMITER //
CREATE FUNCTION `format_path`(in_path VARCHAR(512)
    ) RETURNS varchar(512) CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw path value, and strips out the datadir or tmpdir\n             replacing with @@datadir and @@tmpdir respectively.\n             Also normalizes the paths across operating systems, so backslashes\n             on Windows are converted to forward slashes\n             Parameters\n             path (VARCHAR(512)):\n               The raw file path value to format.\n             Returns\n             VARCHAR(512) CHARSET UTF8\n             Example\n             mysql> select @@datadir;\n             +-----------------------------------------------+\n             | @@datadir                                     |\n             +-----------------------------------------------+\n             | /Users/mark/sandboxes/SmallTree/AMaster/data/ |\n             +-----------------------------------------------+\n             1 row in set (0.06 sec)\n             mysql> select format_path(''/Users/mark/sandboxes/SmallTree/AMaster/data/mysql/proc.MYD'') AS path;\n             +--------------------------+\n             | path                     |\n             +--------------------------+\n             | @@datadir/mysql/proc.MYD |\n             +--------------------------+\n             1 row in set (0.03 sec)\n            '
BEGIN
  DECLARE v_dir VARCHAR(1024);
  DECLARE v_path VARCHAR(512);
  DECLARE path_separator CHAR(1) DEFAULT '/';
  IF @@global.version_compile_os LIKE 'win%' THEN
    SET path_separator = '\\';
  END IF;
  IF in_path LIKE '/private/%' THEN
    SET v_path = REPLACE(in_path, '/private', '');
  ELSE
    SET v_path = in_path;
  END IF;
  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'innodb_data_home_dir'), '');
  IF v_path IS NULL THEN
    RETURN NULL;
  END IF;
  IF v_path LIKE CONCAT(@@global.datadir, IF(SUBSTRING(@@global.datadir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.datadir, CONCAT('@@datadir', IF(SUBSTRING(@@global.datadir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  IF v_path LIKE CONCAT(@@global.tmpdir, IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.tmpdir, CONCAT('@@tmpdir', IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'innodb_data_home_dir'), '');
  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_dir, CONCAT('@@innodb_data_home_dir', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'innodb_log_group_home_dir'), '');
  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_dir, CONCAT('@@innodb_log_group_home_dir', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'slave_load_tmpdir'), '');
  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_dir, CONCAT('@@slave_load_tmpdir', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  SET v_dir = IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'innodb_undo_directory'), '');
  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_dir, CONCAT('@@innodb_undo_directory', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  IF v_path LIKE CONCAT(@@global.basedir, IF(SUBSTRING(@@global.basedir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.basedir, CONCAT('@@basedir', IF(SUBSTRING(@@global.basedir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  RETURN v_path;
END//
DELIMITER ;

-- Dumping structure for function sys.format_statement
DELIMITER //
CREATE FUNCTION `format_statement`(statement LONGTEXT
    ) RETURNS longtext CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Formats a normalized statement, truncating it if it is > 64 characters long by default.\n             To configure the length to truncate the statement to by default, update the `statement_truncate_len`\n             variable with `sys_config` table to a different value. Alternatively, to change it just for just\n             your particular session, use `SET @sys.statement_truncate_len := <some new value>`.\n             Useful for printing statement related data from Performance Schema from\n             the command line.\n             Parameters\n             statement (LONGTEXT):\n               The statement to format.\n             Returns\n             LONGTEXT\n             Example\n             mysql> SELECT sys.format_statement(digest_text)\n                 ->   FROM performance_schema.events_statements_summary_by_digest\n                 ->  ORDER by sum_timer_wait DESC limit 5;\n             +-------------------------------------------------------------------+\n             | sys.format_statement(digest_text)                                 |\n             +-------------------------------------------------------------------+\n             | CREATE SQL SECURITY INVOKER VI ... KE ? AND `variable_value` > ?  |\n             | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `esc` . ... |\n             | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `sys` . ... |\n             | CREATE SQL SECURITY INVOKER VI ...  , `compressed_size` ) ) DESC  |\n             | CREATE SQL SECURITY INVOKER VI ... LIKE ? ORDER BY `timer_start`  |\n             +-------------------------------------------------------------------+\n             5 rows in set (0.00 sec)\n            '
BEGIN
  IF @sys.statement_truncate_len IS NULL THEN
      SET @sys.statement_truncate_len = sys_get_config('statement_truncate_len', 64);
  END IF;
  IF CHAR_LENGTH(statement) > @sys.statement_truncate_len THEN
      RETURN REPLACE(CONCAT(LEFT(statement, (@sys.statement_truncate_len/2)-2), ' ... ', RIGHT(statement, (@sys.statement_truncate_len/2)-2)), '\n', ' ');
  ELSE
      RETURN REPLACE(statement, '\n', ' ');
  END IF;
END//
DELIMITER ;

-- Dumping structure for function sys.format_time
DELIMITER //
CREATE FUNCTION `format_time`(picoseconds TEXT
    ) RETURNS text CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw picoseconds value, and converts it to a human readable form.\n             Picoseconds are the precision that all latency values are printed in\n             within Performance Schema, however are not user friendly when wanting\n             to scan output from the command line.\n             Parameters\n             picoseconds (TEXT):\n               The raw picoseconds value to convert.\n             Returns\n             TEXT\n             Example\n             mysql> select format_time(342342342342345);\n             +------------------------------+\n             | format_time(342342342342345) |\n             +------------------------------+\n             | 00:05:42                     |\n             +------------------------------+\n             1 row in set (0.00 sec)\n             mysql> select format_time(342342342);\n             +------------------------+\n             | format_time(342342342) |\n             +------------------------+\n             | 342.34 us              |\n             +------------------------+\n             1 row in set (0.00 sec)\n             mysql> select format_time(34234);\n              +--------------------+\n             | format_time(34234) |\n             +--------------------+\n             | 34.23 ns           |\n             +--------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
  IF picoseconds IS NULL THEN RETURN NULL;
  ELSEIF picoseconds >= 604800000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 604800000000000000, 2), ' w');
  ELSEIF picoseconds >= 86400000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 86400000000000000, 2), ' d');
  ELSEIF picoseconds >= 3600000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 3600000000000000, 2), ' h');
  ELSEIF picoseconds >= 60000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 60000000000000, 2), ' m');
  ELSEIF picoseconds >= 1000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000000, 2), ' s');
  ELSEIF picoseconds >= 1000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000, 2), ' ms');
  ELSEIF picoseconds >= 1000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000, 2), ' us');
  ELSEIF picoseconds >= 1000 THEN RETURN CONCAT(ROUND(picoseconds / 1000, 2), ' ns');
  ELSE RETURN CONCAT(picoseconds, ' ps');
  END IF;
END//
DELIMITER ;

-- Dumping structure for view sys.host_summary
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `host_summary` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`statements` DECIMAL(64,0) NULL,
	`statement_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`statement_avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`table_scans` DECIMAL(65,0) NULL,
	`file_ios` DECIMAL(64,0) NULL,
	`file_io_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_connections` DECIMAL(41,0) NULL,
	`total_connections` DECIMAL(41,0) NULL,
	`unique_users` BIGINT(21) NOT NULL,
	`current_memory` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`total_memory_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.host_summary_by_file_io
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `host_summary_by_file_io` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`ios` DECIMAL(42,0) NULL,
	`io_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.host_summary_by_file_io_type
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `host_summary_by_file_io_type` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.host_summary_by_stages
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `host_summary_by_stages` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with HOST for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.host_summary_by_statement_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `host_summary_by_statement_latency` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`lock_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_sent` DECIMAL(42,0) NULL,
	`rows_examined` DECIMAL(42,0) NULL,
	`rows_affected` DECIMAL(42,0) NULL,
	`full_scans` DECIMAL(43,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.host_summary_by_statement_type
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `host_summary_by_statement_type` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`statement` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`lock_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
	`full_scans` BIGINT(21) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.innodb_buffer_stats_by_schema
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `innodb_buffer_stats_by_schema` (
	`object_schema` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`allocated` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`data` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`pages` BIGINT(21) NOT NULL,
	`pages_hashed` BIGINT(21) NOT NULL,
	`pages_old` BIGINT(21) NOT NULL,
	`rows_cached` DECIMAL(44,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.innodb_buffer_stats_by_table
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `innodb_buffer_stats_by_table` (
	`object_schema` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`object_name` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`allocated` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`data` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`pages` BIGINT(21) NOT NULL,
	`pages_hashed` BIGINT(21) NOT NULL,
	`pages_old` BIGINT(21) NOT NULL,
	`rows_cached` DECIMAL(44,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.innodb_lock_waits
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `innodb_lock_waits` (
	`wait_started` DATETIME NULL,
	`wait_age` TIME NULL,
	`wait_age_secs` BIGINT(21) NULL,
	`locked_table` VARCHAR(1024) NOT NULL COLLATE 'utf8mb3_general_ci',
	`locked_index` VARCHAR(1024) NULL COLLATE 'utf8mb3_general_ci',
	`locked_type` ENUM('RECORD','TABLE') NOT NULL COLLATE 'utf8mb3_general_ci',
	`waiting_trx_id` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_trx_started` DATETIME NOT NULL,
	`waiting_trx_age` TIME NULL,
	`waiting_trx_rows_locked` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_trx_rows_modified` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_pid` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`waiting_lock_id` VARCHAR(81) NOT NULL COLLATE 'utf8mb3_general_ci',
	`waiting_lock_mode` ENUM('S','S,GAP','X','X,GAP','IS','IS,GAP','IX','IX,GAP','AUTO_INC') NOT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_trx_id` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_pid` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_lock_id` VARCHAR(81) NOT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_lock_mode` ENUM('S','S,GAP','X','X,GAP','IS','IS,GAP','IX','IX,GAP','AUTO_INC') NOT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_trx_started` DATETIME NOT NULL,
	`blocking_trx_age` TIME NULL,
	`blocking_trx_rows_locked` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_trx_rows_modified` BIGINT(21) UNSIGNED NOT NULL,
	`sql_kill_blocking_query` VARCHAR(32) NOT NULL COLLATE 'utf8mb3_general_ci',
	`sql_kill_blocking_connection` VARCHAR(26) NOT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.io_by_thread_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `io_by_thread_by_latency` (
	`user` VARCHAR(384) NULL COLLATE 'utf8mb3_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`min_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_NAME uniquely identifies the row.',
	`processlist_id` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.io_global_by_file_by_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `io_global_by_file_by_bytes` (
	`file` VARCHAR(512) NULL COLLATE 'utf8mb3_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
	`total_read` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_read` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`count_write` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
	`total_written` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_write` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`total` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`write_pct` DECIMAL(26,2) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.io_global_by_file_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `io_global_by_file_by_latency` (
	`file` VARCHAR(512) NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
	`read_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`count_write` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
	`write_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`count_misc` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CREATE, DELETE, OPEN, CLOSE, STREAM_OPEN, STREAM_CLOSE, SEEK, TELL, FLUSH, STAT, FSTAT, CHSIZE, RENAME, and SYNC.',
	`misc_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.io_global_by_wait_by_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `io_global_by_wait_by_bytes` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`min_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
	`total_read` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_read` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`count_write` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
	`total_written` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_written` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`total_requested` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.io_global_by_wait_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `io_global_by_wait_by_latency` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`read_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`write_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`misc_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
	`total_read` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_read` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`count_write` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
	`total_written` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_written` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.latest_file_io
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `latest_file_io` (
	`thread` VARCHAR(214) NULL COLLATE 'utf8mb3_general_ci',
	`file` VARCHAR(512) NULL COLLATE 'utf8mb3_general_ci',
	`latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`operation` VARCHAR(32) NOT NULL COMMENT 'Operation type, for example read, write or lock' COLLATE 'utf8mb3_general_ci',
	`requested` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for function sys.list_add
DELIMITER //
CREATE FUNCTION `list_add`(in_list TEXT,
        in_add_value TEXT
    ) RETURNS text CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a list, and a value to add to the list, and returns the resulting list.\n             Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n             Parameters\n             in_list (TEXT):\n               The comma separated list to add a value to\n             in_add_value (TEXT):\n               The value to add to the input list\n             Returns\n             TEXT\n             Example\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------+\n             | @@sql_mode                                                                        |\n             +-----------------------------------------------------------------------------------+\n             | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n             mysql> set sql_mode = sys.list_add(@@sql_mode, ''ANSI_QUOTES'');\n             Query OK, 0 rows affected (0.06 sec)\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------------------+\n             | @@sql_mode                                                                                    |\n             +-----------------------------------------------------------------------------------------------+\n             | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    IF (in_add_value IS NULL) THEN
        SIGNAL SQLSTATE '02200'
           SET MESSAGE_TEXT = 'Function sys.list_add: in_add_value input variable should not be NULL',
               MYSQL_ERRNO = 1138;
    END IF;
    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN
        RETURN in_add_value;
    END IF;
    RETURN (SELECT CONCAT(TRIM(BOTH ',' FROM TRIM(in_list)), ',', in_add_value));
END//
DELIMITER ;

-- Dumping structure for function sys.list_drop
DELIMITER //
CREATE FUNCTION `list_drop`(in_list TEXT,
        in_drop_value TEXT
    ) RETURNS text CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a list, and a value to attempt to remove from the list, and returns the resulting list.\n             Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n             Parameters\n             in_list (TEXT):\n               The comma separated list to drop a value from\n             in_drop_value (TEXT):\n               The value to drop from the input list\n             Returns\n             TEXT\n             Example\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------------------+\n             | @@sql_mode                                                                                    |\n             +-----------------------------------------------------------------------------------------------+\n             | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n             mysql> set sql_mode = sys.list_drop(@@sql_mode, ''ONLY_FULL_GROUP_BY'');\n             Query OK, 0 rows affected (0.03 sec)\n             mysql> select @@sql_mode;\n             +----------------------------------------------------------------------------+\n             | @@sql_mode                                                                 |\n             +----------------------------------------------------------------------------+\n             | ANSI_QUOTES,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +----------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    IF (in_drop_value IS NULL) THEN
        SIGNAL SQLSTATE '02200'
           SET MESSAGE_TEXT = 'Function sys.list_drop: in_drop_value input variable should not be NULL',
               MYSQL_ERRNO = 1138;
    END IF;
    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN
        RETURN in_list;
    END IF;
    RETURN (SELECT TRIM(BOTH ',' FROM REPLACE(REPLACE(CONCAT(',', in_list), CONCAT(',', in_drop_value), ''), CONCAT(', ', in_drop_value), '')));
END//
DELIMITER ;

-- Dumping structure for view sys.memory_by_host_by_current_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `memory_by_host_by_current_bytes` (
	`host` VARCHAR(60) NULL COLLATE 'utf8mb3_bin',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_avg_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_max_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`total_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.memory_by_thread_by_current_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `memory_by_thread_by_current_bytes` (
	`thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Thread id.',
	`user` VARCHAR(384) NULL COLLATE 'utf8mb3_general_ci',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_avg_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_max_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`total_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.memory_by_user_by_current_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `memory_by_user_by_current_bytes` (
	`user` VARCHAR(32) NULL COLLATE 'utf8mb3_bin',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_avg_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_max_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`total_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.memory_global_by_current_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `memory_global_by_current_bytes` (
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name.' COLLATE 'utf8mb3_general_ci',
	`current_count` BIGINT(20) NOT NULL COMMENT 'Currently allocated blocks that have not been freed (COUNT_ALLOC minus COUNT_FREE).',
	`current_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_avg_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`high_count` BIGINT(20) NOT NULL COMMENT 'Highest number of allocated blocks (highest value of CURRENT_COUNT_USED).',
	`high_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`high_avg_alloc` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.memory_global_total
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `memory_global_total` (
	`total_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.metrics
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `metrics` (
	`Variable_name` VARCHAR(193) NOT NULL COLLATE 'utf8mb3_general_ci',
	`Variable_value` VARCHAR(1024) NULL COLLATE 'utf8mb3_general_ci',
	`Type` VARCHAR(210) NOT NULL COLLATE 'utf8mb3_general_ci',
	`Enabled` VARCHAR(3) NOT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.processlist
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `processlist` (
	`thd_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`conn_id` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
	`user` VARCHAR(384) NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Thread\'s default database, or NULL if none exists.' COLLATE 'utf8mb3_general_ci',
	`command` VARCHAR(16) NULL COMMENT 'Type of command executed by the thread. These correspond to the the COM_xxx client/server protocol commands, and the Com_xxx status variables. See Thread Command Values.' COLLATE 'utf8mb3_general_ci',
	`state` VARCHAR(64) NULL COMMENT 'Action, event or state indicating what the thread is doing.' COLLATE 'utf8mb3_general_ci',
	`time` BIGINT(20) NULL COMMENT 'Time in seconds the thread has been in its current state.',
	`current_statement` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`statement_latency` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci',
	`progress` DECIMAL(26,2) NULL,
	`lock_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_examined` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows read during the statement\'s execution.',
	`rows_sent` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows returned.',
	`rows_affected` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows affected the statement affected.',
	`tmp_tables` BIGINT(20) UNSIGNED NULL COMMENT 'Number of temp tables created by the statement.',
	`tmp_disk_tables` BIGINT(20) UNSIGNED NULL COMMENT 'Number of on-disk temp tables created by the statement.',
	`full_scan` VARCHAR(3) NULL COLLATE 'utf8mb3_general_ci',
	`last_statement` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`last_statement_latency` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_memory` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`last_wait` VARCHAR(128) NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table' COLLATE 'utf8mb3_general_ci',
	`last_wait_latency` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci',
	`source` VARCHAR(64) NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.' COLLATE 'utf8mb3_general_ci',
	`trx_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`trx_state` ENUM('ACTIVE','COMMITTED','ROLLED BACK') NULL COMMENT 'The current transaction state. The value is ACTIVE (after START TRANSACTION or BEGIN), COMMITTED (after COMMIT), or ROLLED BACK (after ROLLBACK).' COLLATE 'utf8mb3_general_ci',
	`trx_autocommit` ENUM('YES','NO') NULL COMMENT 'Whether autcommit mode was enabled when the transaction started.' COLLATE 'utf8mb3_general_ci',
	`pid` VARCHAR(1024) NULL COMMENT 'Attribute value.' COLLATE 'utf8mb3_bin',
	`program_name` VARCHAR(1024) NULL COMMENT 'Attribute value.' COLLATE 'utf8mb3_bin'
) ENGINE=MyISAM;

-- Dumping structure for view sys.ps_check_lost_instrumentation
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `ps_check_lost_instrumentation` (
	`variable_name` VARCHAR(64) NOT NULL COMMENT 'The global status variable name.' COLLATE 'utf8mb3_general_ci',
	`variable_value` VARCHAR(1024) NULL COMMENT 'The global status variable value.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for function sys.ps_is_account_enabled
DELIMITER //
CREATE FUNCTION `ps_is_account_enabled`(in_host VARCHAR(60),
        in_user VARCHAR(16)
    ) RETURNS enum('YES','NO') CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Determines whether instrumentation of an account is enabled\n             within Performance Schema.\n             Parameters\n             in_host VARCHAR(60):\n               The hostname of the account to check.\n             in_user (VARCHAR(16)):\n               The username of the account to check.\n             Returns\n             ENUM(''YES'', ''NO'', ''PARTIAL'')\n             Example\n             mysql> SELECT sys.ps_is_account_enabled(''localhost'', ''root'');\n             +------------------------------------------------+\n             | sys.ps_is_account_enabled(''localhost'', ''root'') |\n             +------------------------------------------------+\n             | YES                                            |\n             +------------------------------------------------+\n             1 row in set (0.01 sec)\n            '
BEGIN
    RETURN IF(EXISTS(SELECT 1
                       FROM performance_schema.setup_actors
                      WHERE (`HOST` = '%' OR in_host LIKE `HOST`)
                        AND (`USER` = '%' OR `USER` = in_user)
                    ),
              'YES', 'NO'
           );
END//
DELIMITER ;

-- Dumping structure for function sys.ps_is_consumer_enabled
DELIMITER //
CREATE FUNCTION `ps_is_consumer_enabled`(in_consumer varchar(64)
   ) RETURNS enum('YES','NO') CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Determines whether a consumer is enabled (taking the consumer hierarchy into consideration)\n             within the Performance Schema.\n             Parameters\n             in_consumer VARCHAR(64):\n               The name of the consumer to check.\n             Returns\n             ENUM(''YES'', ''NO'')\n             Example\n             mysql> SELECT sys.ps_is_consumer_enabled(''events_stages_history'');\n             +-----------------------------------------------------+\n             | sys.ps_is_consumer_enabled(''events_stages_history'') |\n             +-----------------------------------------------------+\n             | NO                                                  |\n             +-----------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN (
        SELECT (CASE
                   WHEN c.NAME = 'global_instrumentation' THEN c.ENABLED
                   WHEN c.NAME = 'thread_instrumentation' THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   WHEN c.NAME LIKE '%\_digest'           THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   WHEN c.NAME LIKE '%\_current'          THEN IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   ELSE IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES'
                           AND ( SELECT cc.ENABLED FROM performance_schema.setup_consumers cc WHERE NAME = CONCAT(SUBSTRING_INDEX(c.NAME, '_', 2), '_current')
                               ) = 'YES', 'YES', 'NO')
                END) AS IsEnabled
          FROM performance_schema.setup_consumers c
               INNER JOIN performance_schema.setup_consumers cg
               INNER JOIN performance_schema.setup_consumers ct
         WHERE cg.NAME       = 'global_instrumentation'
               AND ct.NAME   = 'thread_instrumentation'
               AND c.NAME    = in_consumer
       );
END//
DELIMITER ;

-- Dumping structure for function sys.ps_is_instrument_default_enabled
DELIMITER //
CREATE FUNCTION `ps_is_instrument_default_enabled`(in_instrument VARCHAR(128)
    ) RETURNS enum('YES','NO') CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns whether an instrument is enabled by default in this version of MySQL.\n             Parameters\n             in_instrument VARCHAR(128):\n               The instrument to check.\n             Returns\n             ENUM(''YES'', ''NO'')\n             Example\n             mysql> SELECT sys.ps_is_instrument_default_enabled(''statement/sql/select'');\n             +--------------------------------------------------------------+\n             | sys.ps_is_instrument_default_enabled(''statement/sql/select'') |\n             +--------------------------------------------------------------+\n             | YES                                                          |\n             +--------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    DECLARE v_enabled ENUM('YES', 'NO');
    SET v_enabled = IF(in_instrument LIKE 'wait/io/file/%'
                        OR in_instrument LIKE 'wait/io/table/%'
                        OR in_instrument LIKE 'statement/%'
                        OR in_instrument LIKE 'memory/performance_schema/%'
                        OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')
               
                      ,
                       'YES',
                       'NO'
                    );
    RETURN v_enabled;
END//
DELIMITER ;

-- Dumping structure for function sys.ps_is_instrument_default_timed
DELIMITER //
CREATE FUNCTION `ps_is_instrument_default_timed`(in_instrument VARCHAR(128)
    ) RETURNS enum('YES','NO') CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns whether an instrument is timed by default in this version of MySQL.\n             Parameters\n             in_instrument VARCHAR(128):\n               The instrument to check.\n             Returns\n             ENUM(''YES'', ''NO'')\n             Example\n             mysql> SELECT sys.ps_is_instrument_default_timed(''statement/sql/select'');\n             +------------------------------------------------------------+\n             | sys.ps_is_instrument_default_timed(''statement/sql/select'') |\n             +------------------------------------------------------------+\n             | YES                                                        |\n             +------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    DECLARE v_timed ENUM('YES', 'NO');
    SET v_timed = IF(in_instrument LIKE 'wait/io/file/%'
                        OR in_instrument LIKE 'wait/io/table/%'
                        OR in_instrument LIKE 'statement/%'
                        OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')
               
                      ,
                       'YES',
                       'NO'
                    );
    RETURN v_timed;
END//
DELIMITER ;

-- Dumping structure for function sys.ps_is_thread_instrumented
DELIMITER //
CREATE FUNCTION `ps_is_thread_instrumented`(in_connection_id BIGINT UNSIGNED
    ) RETURNS enum('YES','NO','UNKNOWN') CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Checks whether the provided connection id is instrumented within Performance Schema.\n             Parameters\n             in_connection_id (BIGINT UNSIGNED):\n               The id of the connection to check.\n             Returns\n             ENUM(''YES'', ''NO'', ''UNKNOWN'')\n             Example\n             mysql> SELECT sys.ps_is_thread_instrumented(CONNECTION_ID());\n             +------------------------------------------------+\n             | sys.ps_is_thread_instrumented(CONNECTION_ID()) |\n             +------------------------------------------------+\n             | YES                                            |\n             +------------------------------------------------+\n            '
BEGIN
    DECLARE v_enabled ENUM('YES', 'NO', 'UNKNOWN');
    IF (in_connection_id IS NULL) THEN
        RETURN NULL;
    END IF;
    SELECT INSTRUMENTED INTO v_enabled
      FROM performance_schema.threads
     WHERE PROCESSLIST_ID = in_connection_id;
    IF (v_enabled IS NULL) THEN
        RETURN 'UNKNOWN';
    ELSE
        RETURN v_enabled;
    END IF;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_disable_background_threads
DELIMITER //
CREATE PROCEDURE `ps_setup_disable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Disable all background thread instrumentation within Performance Schema.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_disable_background_threads();\n             +--------------------------------+\n             | summary                        |\n             +--------------------------------+\n             | Disabled 18 background threads |\n             +--------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE type = 'BACKGROUND';
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_disable_consumer
DELIMITER //
CREATE PROCEDURE `ps_setup_disable_consumer`(
        IN consumer VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Disables consumers within Performance Schema\n             matching the input pattern.\n             Parameters\n             consumer (VARCHAR(128)):\n               A LIKE pattern match (using "%consumer%") of consumers to disable\n             Example\n             To disable all consumers:\n             mysql> CALL sys.ps_setup_disable_consumer('''');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 15 consumers    |\n             +--------------------------+\n             1 row in set (0.02 sec)\n             To disable just the event_stage consumers:\n             mysql> CALL sys.ps_setup_disable_comsumers(''stage'');\n             +------------------------+\n             | summary                |\n             +------------------------+\n             | Disabled 3 consumers   |\n             +------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.setup_consumers
       SET enabled = 'NO'
     WHERE name LIKE CONCAT('%', consumer, '%');
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_disable_instrument
DELIMITER //
CREATE PROCEDURE `ps_setup_disable_instrument`(
        IN in_pattern VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Disables instruments within Performance Schema\n             matching the input pattern.\n             Parameters\n             in_pattern (VARCHAR(128)):\n               A LIKE pattern match (using "%in_pattern%") of events to disable\n             Example\n             To disable all mutex instruments:\n             mysql> CALL sys.ps_setup_disable_instrument(''wait/synch/mutex'');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 155 instruments |\n             +--------------------------+\n             1 row in set (0.02 sec)\n             To disable just a specific TCP/IP based network IO instrument:\n             mysql> CALL sys.ps_setup_disable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n             +------------------------+\n             | summary                |\n             +------------------------+\n             | Disabled 1 instruments |\n             +------------------------+\n             1 row in set (0.00 sec)\n             To disable all instruments:\n             mysql> CALL sys.ps_setup_disable_instrument('''');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 547 instruments |\n             +--------------------------+\n             1 row in set (0.01 sec)\n            '
BEGIN
    UPDATE performance_schema.setup_instruments
       SET enabled = 'NO', timed = 'NO'
     WHERE name LIKE CONCAT('%', in_pattern, '%');
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_disable_thread
DELIMITER //
CREATE PROCEDURE `ps_setup_disable_thread`(
        IN in_connection_id BIGINT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Disable the given connection/thread in Performance Schema.\n             Parameters\n             in_connection_id (BIGINT):\n               The connection ID (PROCESSLIST_ID from performance_schema.threads\n               or the ID shown within SHOW PROCESSLIST)\n             Example\n             mysql> CALL sys.ps_setup_disable_thread(3);\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.01 sec)\n             To disable the current connection:\n             mysql> CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE processlist_id = in_connection_id;
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_enable_background_threads
DELIMITER //
CREATE PROCEDURE `ps_setup_enable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Enable all background thread instrumentation within Performance Schema.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_enable_background_threads();\n             +-------------------------------+\n             | summary                       |\n             +-------------------------------+\n             | Enabled 18 background threads |\n             +-------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'YES'
     WHERE type = 'BACKGROUND';
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_enable_consumer
DELIMITER //
CREATE PROCEDURE `ps_setup_enable_consumer`(
        IN consumer VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Enables consumers within Performance Schema\n             matching the input pattern.\n             Parameters\n             consumer (VARCHAR(128)):\n               A LIKE pattern match (using "%consumer%") of consumers to enable\n             Example\n             To enable all consumers:\n             mysql> CALL sys.ps_setup_enable_consumer('''');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 10 consumers    |\n             +-------------------------+\n             1 row in set (0.02 sec)\n             Query OK, 0 rows affected (0.02 sec)\n             To enable just "waits" consumers:\n             mysql> CALL sys.ps_setup_enable_consumer(''waits'');\n             +-----------------------+\n             | summary               |\n             +-----------------------+\n             | Enabled 3 consumers   |\n             +-----------------------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n             '
BEGIN
    UPDATE performance_schema.setup_consumers
       SET enabled = 'YES'
     WHERE name LIKE CONCAT('%', consumer, '%');
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_enable_instrument
DELIMITER //
CREATE PROCEDURE `ps_setup_enable_instrument`(
        IN in_pattern VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Enables instruments within Performance Schema\n             matching the input pattern.\n             Parameters\n             in_pattern (VARCHAR(128)):\n               A LIKE pattern match (using "%in_pattern%") of events to enable\n             Example\n             To enable all mutex instruments:\n             mysql> CALL sys.ps_setup_enable_instrument(''wait/synch/mutex'');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 155 instruments |\n             +-------------------------+\n             1 row in set (0.02 sec)\n             Query OK, 0 rows affected (0.02 sec)\n             To enable just a specific TCP/IP based network IO instrument:\n             mysql> CALL sys.ps_setup_enable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n             +-----------------------+\n             | summary               |\n             +-----------------------+\n             | Enabled 1 instruments |\n             +-----------------------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n             To enable all instruments:\n             mysql> CALL sys.ps_setup_enable_instrument('''');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 547 instruments |\n             +-------------------------+\n             1 row in set (0.01 sec)\n             Query OK, 0 rows affected (0.01 sec)\n            '
BEGIN
    UPDATE performance_schema.setup_instruments
       SET enabled = 'YES', timed = 'YES'
     WHERE name LIKE CONCAT('%', in_pattern, '%');
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_enable_thread
DELIMITER //
CREATE PROCEDURE `ps_setup_enable_thread`(
        IN in_connection_id BIGINT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Enable the given connection/thread in Performance Schema.\n             Parameters\n             in_connection_id (BIGINT):\n               The connection ID (PROCESSLIST_ID from performance_schema.threads\n               or the ID shown within SHOW PROCESSLIST)\n             Example\n             mysql> CALL sys.ps_setup_enable_thread(3);\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (0.01 sec)\n             To enable the current connection:\n             mysql> CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'YES'
     WHERE processlist_id = in_connection_id;
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_reload_saved
DELIMITER //
CREATE PROCEDURE `ps_setup_reload_saved`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Reloads a saved Performance Schema configuration,\n             so that you can alter the setup for debugging purposes,\n             but restore it to a previous state.\n             Use the companion procedure - ps_setup_save(), to\n             save a configuration.\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_save();\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> UPDATE performance_schema.setup_instruments SET enabled = ''YES'', timed = ''YES'';\n             Query OK, 547 rows affected (0.40 sec)\n             Rows matched: 784  Changed: 547  Warnings: 0\n             /* Run some tests that need more detailed instrumentation here */\n             mysql> CALL sys.ps_setup_reload_saved();\n             Query OK, 0 rows affected (0.32 sec)\n            '
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_lock_result INT;
    DECLARE v_lock_used_by BIGINT;
    DECLARE v_signal_message TEXT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SIGNAL SQLSTATE VALUE '90001'
           SET MESSAGE_TEXT = 'An error occurred, was sys.ps_setup_save() run before this procedure?';
    END;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT IS_USED_LOCK('sys.ps_setup_save') INTO v_lock_used_by;
    IF (v_lock_used_by != CONNECTION_ID()) THEN
        SET v_signal_message = CONCAT('The sys.ps_setup_save lock is currently owned by ', v_lock_used_by);
        SIGNAL SQLSTATE VALUE '90002'
           SET MESSAGE_TEXT = v_signal_message;
    END IF;
    DELETE FROM performance_schema.setup_actors;
    INSERT INTO performance_schema.setup_actors SELECT * FROM tmp_setup_actors;
    BEGIN
        DECLARE v_name varchar(64);
        DECLARE v_enabled enum('YES', 'NO');
        DECLARE c_consumers CURSOR FOR SELECT NAME, ENABLED FROM tmp_setup_consumers;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
        SET v_done = FALSE;
        OPEN c_consumers;
        c_consumers_loop: LOOP
            FETCH c_consumers INTO v_name, v_enabled;
            IF v_done THEN
               LEAVE c_consumers_loop;
            END IF;
            UPDATE performance_schema.setup_consumers
               SET ENABLED = v_enabled
             WHERE NAME = v_name;
         END LOOP;
         CLOSE c_consumers;
    END;
    UPDATE performance_schema.setup_instruments
     INNER JOIN tmp_setup_instruments USING (NAME)
       SET performance_schema.setup_instruments.ENABLED = tmp_setup_instruments.ENABLED,
           performance_schema.setup_instruments.TIMED   = tmp_setup_instruments.TIMED;
    BEGIN
        DECLARE v_thread_id bigint unsigned;
        DECLARE v_instrumented enum('YES', 'NO');
        DECLARE c_threads CURSOR FOR SELECT THREAD_ID, INSTRUMENTED FROM tmp_threads;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
        SET v_done = FALSE;
        OPEN c_threads;
        c_threads_loop: LOOP
            FETCH c_threads INTO v_thread_id, v_instrumented;
            IF v_done THEN
               LEAVE c_threads_loop;
            END IF;
            UPDATE performance_schema.threads
               SET INSTRUMENTED = v_instrumented
             WHERE THREAD_ID = v_thread_id;
        END LOOP;
        CLOSE c_threads;
    END;
    UPDATE performance_schema.threads
       SET INSTRUMENTED = IF(PROCESSLIST_USER IS NOT NULL,
                             sys.ps_is_account_enabled(PROCESSLIST_HOST, PROCESSLIST_USER),
                             'YES')
     WHERE THREAD_ID NOT IN (SELECT THREAD_ID FROM tmp_threads);
    DROP TEMPORARY TABLE tmp_setup_actors;
    DROP TEMPORARY TABLE tmp_setup_consumers;
    DROP TEMPORARY TABLE tmp_setup_instruments;
    DROP TEMPORARY TABLE tmp_threads;
    SELECT RELEASE_LOCK('sys.ps_setup_save') INTO v_lock_result;
    SET sql_log_bin = @log_bin;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_reset_to_default
DELIMITER //
CREATE PROCEDURE `ps_setup_reset_to_default`(
       IN in_verbose BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Resets the Performance Schema setup to the default settings.\n             Parameters\n             in_verbose (BOOLEAN):\n               Whether to print each setup stage (including the SQL) whilst running.\n             Example\n             mysql> CALL sys.ps_setup_reset_to_default(true)\\G\n             *************************** 1. row ***************************\n             status: Resetting: setup_actors\n             DELETE\n             FROM performance_schema.setup_actors\n              WHERE NOT (HOST = ''%'' AND USER = ''%'' AND ROLE = ''%'')\n             1 row in set (0.00 sec)\n             *************************** 1. row ***************************\n             status: Resetting: setup_actors\n             INSERT IGNORE INTO performance_schema.setup_actors\n             VALUES (''%'', ''%'', ''%'')\n             1 row in set (0.00 sec)\n             ...\n             mysql> CALL sys.ps_setup_reset_to_default(false)\\G\n             Query OK, 0 rows affected (0.00 sec)\n            '
BEGIN
    SET @query = 'DELETE
                    FROM performance_schema.setup_actors
                   WHERE NOT (HOST = ''%'' AND USER = ''%'' AND ROLE = ''%'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'INSERT IGNORE INTO performance_schema.setup_actors
                  VALUES (''%'', ''%'', ''%'', ''YES'', ''YES'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.setup_instruments
                     SET ENABLED = sys.ps_is_instrument_default_enabled(NAME),
                         TIMED   = sys.ps_is_instrument_default_timed(NAME)';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_instruments\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.setup_consumers
                     SET ENABLED = IF(NAME IN (''events_statements_current'', ''events_transactions_current'', ''global_instrumentation'', ''thread_instrumentation'', ''statements_digest''), ''YES'', ''NO'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_consumers\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'DELETE
                    FROM performance_schema.setup_objects
                   WHERE NOT (OBJECT_TYPE IN (''EVENT'', ''FUNCTION'', ''PROCEDURE'', ''TABLE'', ''TRIGGER'') AND OBJECT_NAME = ''%''
                     AND (OBJECT_SCHEMA = ''mysql''              AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''performance_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''information_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''%''                  AND ENABLED = ''YES'' AND TIMED = ''YES''))';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'INSERT IGNORE INTO performance_schema.setup_objects
                  VALUES (''EVENT''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''FUNCTION'' , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''PROCEDURE'', ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''%''                 , ''%'', ''YES'', ''YES''),
                         (''TABLE''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''TRIGGER''  , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''%''                 , ''%'', ''YES'', ''YES'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.threads
                     SET INSTRUMENTED = ''YES''';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: threads\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_save
DELIMITER //
CREATE PROCEDURE `ps_setup_save`(
        IN in_timeout INT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Saves the current configuration of Performance Schema,\n             so that you can alter the setup for debugging purposes,\n             but restore it to a previous state.\n             Use the companion procedure - ps_setup_reload_saved(), to\n             restore the saved config.\n             The named lock "sys.ps_setup_save" is taken before the\n             current configuration is saved. If the attempt to get the named\n             lock times out, an error occurs.\n             The lock is released after the settings have been restored by\n             calling ps_setup_reload_saved().\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             in_timeout INT\n               The timeout in seconds used when trying to obtain the lock.\n               A negative timeout means infinite timeout.\n             Example\n             mysql> CALL sys.ps_setup_save(-1);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> UPDATE performance_schema.setup_instruments\n                 ->    SET enabled = ''YES'', timed = ''YES'';\n             Query OK, 547 rows affected (0.40 sec)\n             Rows matched: 784  Changed: 547  Warnings: 0\n             /* Run some tests that need more detailed instrumentation here */\n             mysql> CALL sys.ps_setup_reload_saved();\n             Query OK, 0 rows affected (0.32 sec)\n            '
BEGIN
    DECLARE v_lock_result INT;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT GET_LOCK('sys.ps_setup_save', in_timeout) INTO v_lock_result;
    IF v_lock_result THEN
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_actors;
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_consumers;
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_instruments;
        DROP TEMPORARY TABLE IF EXISTS tmp_threads;
        CREATE TEMPORARY TABLE tmp_setup_actors LIKE performance_schema.setup_actors;
        CREATE TEMPORARY TABLE tmp_setup_consumers LIKE performance_schema.setup_consumers;
        CREATE TEMPORARY TABLE tmp_setup_instruments LIKE performance_schema.setup_instruments;
        CREATE TEMPORARY TABLE tmp_threads (THREAD_ID bigint unsigned NOT NULL PRIMARY KEY, INSTRUMENTED enum('YES','NO') NOT NULL);
        INSERT INTO tmp_setup_actors SELECT * FROM performance_schema.setup_actors;
        INSERT INTO tmp_setup_consumers SELECT * FROM performance_schema.setup_consumers;
        INSERT INTO tmp_setup_instruments SELECT * FROM performance_schema.setup_instruments;
        INSERT INTO tmp_threads SELECT THREAD_ID, INSTRUMENTED FROM performance_schema.threads;
    ELSE
        SIGNAL SQLSTATE VALUE '90000'
           SET MESSAGE_TEXT = 'Could not lock the sys.ps_setup_save user lock, another thread has a saved configuration';
    END IF;
    SET sql_log_bin = @log_bin;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_show_disabled
DELIMITER //
CREATE PROCEDURE `ps_setup_show_disabled`(
        IN in_show_instruments BOOLEAN,
        IN in_show_threads BOOLEAN
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently disable Performance Schema configuration.\n             Disabled users is only available for MySQL 5.7.6 and later.\n             In earlier versions it was only possible to enable users.\n             Parameters\n             in_show_instruments (BOOLEAN):\n               Whether to print disabled instruments (can print many items)\n             in_show_threads (BOOLEAN):\n               Whether to print disabled threads\n             Example\n             mysql> CALL sys.ps_setup_show_disabled(TRUE, TRUE);\n             +----------------------------+\n             | performance_schema_enabled |\n             +----------------------------+\n             |                          1 |\n             +----------------------------+\n             1 row in set (0.00 sec)\n             +--------------------+\n             | disabled_users     |\n             +--------------------+\n             | ''mark''@''localhost'' |\n             +--------------------+\n             1 row in set (0.00 sec)\n             +-------------+----------------------+---------+-------+\n             | object_type | objects              | enabled | timed |\n             +-------------+----------------------+---------+-------+\n             | EVENT       | mysql.%              | NO      | NO    |\n             | EVENT       | performance_schema.% | NO      | NO    |\n             | EVENT       | information_schema.% | NO      | NO    |\n             | FUNCTION    | mysql.%              | NO      | NO    |\n             | FUNCTION    | performance_schema.% | NO      | NO    |\n             | FUNCTION    | information_schema.% | NO      | NO    |\n             | PROCEDURE   | mysql.%              | NO      | NO    |\n             | PROCEDURE   | performance_schema.% | NO      | NO    |\n             | PROCEDURE   | information_schema.% | NO      | NO    |\n             | TABLE       | mysql.%              | NO      | NO    |\n             | TABLE       | performance_schema.% | NO      | NO    |\n             | TABLE       | information_schema.% | NO      | NO    |\n             | TRIGGER     | mysql.%              | NO      | NO    |\n             | TRIGGER     | performance_schema.% | NO      | NO    |\n             | TRIGGER     | information_schema.% | NO      | NO    |\n             +-------------+----------------------+---------+-------+\n             15 rows in set (0.00 sec)\n             +----------------------------------+\n             | disabled_consumers               |\n             +----------------------------------+\n             | events_stages_current            |\n             | events_stages_history            |\n             | events_stages_history_long       |\n             | events_statements_history        |\n             | events_statements_history_long   |\n             | events_transactions_history      |\n             | events_transactions_history_long |\n             | events_waits_current             |\n             | events_waits_history             |\n             | events_waits_history_long        |\n             +----------------------------------+\n             10 rows in set (0.00 sec)\n             Empty set (0.00 sec)\n             +---------------------------------------------------------------------------------------+-------+\n             | disabled_instruments                                                                  | timed |\n             +---------------------------------------------------------------------------------------+-------+\n             | wait/synch/mutex/sql/TC_LOG_MMAP::LOCK_tc                                             | NO    |\n             | wait/synch/mutex/sql/LOCK_des_key_file                                                | NO    |\n             | wait/synch/mutex/sql/MYSQL_BIN_LOG::LOCK_commit                                       | NO    |\n             ...\n             | memory/sql/servers_cache                                                              | NO    |\n             | memory/sql/udf_mem                                                                    | NO    |\n             | wait/lock/metadata/sql/mdl                                                            | NO    |\n             +---------------------------------------------------------------------------------------+-------+\n             547 rows in set (0.00 sec)\n             Query OK, 0 rows affected (0.01 sec)\n            '
BEGIN
    SELECT @@performance_schema AS performance_schema_enabled;
    
    SELECT object_type,
           CONCAT(object_schema, '.', object_name) AS objects,
           enabled,
           timed
      FROM performance_schema.setup_objects
     WHERE enabled = 'NO'
     ORDER BY object_type, objects;
    SELECT name AS disabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'NO'
     ORDER BY disabled_consumers;
    IF (in_show_threads) THEN
        SELECT IF(name = 'thread/sql/one_connection',
                  CONCAT(processlist_user, '@', processlist_host),
                  REPLACE(name, 'thread/', '')) AS disabled_threads,
        TYPE AS thread_type
          FROM performance_schema.threads
         WHERE INSTRUMENTED = 'NO'
         ORDER BY disabled_threads;
    END IF;
    IF (in_show_instruments) THEN
        SELECT name AS disabled_instruments,
               timed
          FROM performance_schema.setup_instruments
         WHERE enabled = 'NO'
         ORDER BY disabled_instruments;
    END IF;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_show_disabled_consumers
DELIMITER //
CREATE PROCEDURE `ps_setup_show_disabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently disabled consumers.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_disabled_consumers();\n             +---------------------------+\n             | disabled_consumers        |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n            '
BEGIN
    SELECT name AS disabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'NO'
     ORDER BY disabled_consumers;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_show_disabled_instruments
DELIMITER //
CREATE PROCEDURE `ps_setup_show_disabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently disabled instruments.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_disabled_instruments();\n            '
BEGIN
    SELECT name AS disabled_instruments, timed
      FROM performance_schema.setup_instruments
     WHERE enabled = 'NO'
     ORDER BY disabled_instruments;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_show_enabled
DELIMITER //
CREATE PROCEDURE `ps_setup_show_enabled`(
        IN in_show_instruments BOOLEAN,
        IN in_show_threads BOOLEAN
    )
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently enabled Performance Schema configuration.\n             Parameters\n             in_show_instruments (BOOLEAN):\n               Whether to print enabled instruments (can print many items)\n             in_show_threads (BOOLEAN):\n               Whether to print enabled threads\n             Example\n             mysql> CALL sys.ps_setup_show_enabled(TRUE, TRUE);\n             +----------------------------+\n             | performance_schema_enabled |\n             +----------------------------+\n             |                          1 |\n             +----------------------------+\n             1 row in set (0.00 sec)\n             +---------------+\n             | enabled_users |\n             +---------------+\n             | ''%''@''%''       |\n             +---------------+\n             1 row in set (0.01 sec)\n             +-------------+---------+---------+-------+\n             | object_type | objects | enabled | timed |\n             +-------------+---------+---------+-------+\n             | EVENT       | %.%     | YES     | YES   |\n             | FUNCTION    | %.%     | YES     | YES   |\n             | PROCEDURE   | %.%     | YES     | YES   |\n             | TABLE       | %.%     | YES     | YES   |\n             | TRIGGER     | %.%     | YES     | YES   |\n             +-------------+---------+---------+-------+\n             5 rows in set (0.01 sec)\n             +---------------------------+\n             | enabled_consumers         |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n             +---------------------------------+-------------+\n             | enabled_threads                 | thread_type |\n             +---------------------------------+-------------+\n             | sql/main                        | BACKGROUND  |\n             | sql/thread_timer_notifier       | BACKGROUND  |\n             | innodb/io_ibuf_thread           | BACKGROUND  |\n             | innodb/io_log_thread            | BACKGROUND  |\n             | innodb/io_read_thread           | BACKGROUND  |\n             | innodb/io_read_thread           | BACKGROUND  |\n             | innodb/io_write_thread          | BACKGROUND  |\n             | innodb/io_write_thread          | BACKGROUND  |\n             | innodb/page_cleaner_thread      | BACKGROUND  |\n             | innodb/srv_lock_timeout_thread  | BACKGROUND  |\n             | innodb/srv_error_monitor_thread | BACKGROUND  |\n             | innodb/srv_monitor_thread       | BACKGROUND  |\n             | innodb/srv_master_thread        | BACKGROUND  |\n             | innodb/srv_purge_thread         | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/buf_dump_thread          | BACKGROUND  |\n             | innodb/dict_stats_thread        | BACKGROUND  |\n             | sql/signal_handler              | BACKGROUND  |\n             | sql/compress_gtid_table         | FOREGROUND  |\n             | root@localhost                  | FOREGROUND  |\n             +---------------------------------+-------------+\n             22 rows in set (0.01 sec)\n             +-------------------------------------+-------+\n             | enabled_instruments                 | timed |\n             +-------------------------------------+-------+\n             | wait/io/file/sql/map                | YES   |\n             | wait/io/file/sql/binlog             | YES   |\n             ...\n             | statement/com/Error                 | YES   |\n             | statement/com/                      | YES   |\n             | idle                                | YES   |\n             +-------------------------------------+-------+\n             210 rows in set (0.08 sec)\n             Query OK, 0 rows affected (0.89 sec)\n            '
BEGIN
    SELECT @@performance_schema AS performance_schema_enabled;
    SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS enabled_users
      FROM performance_schema.setup_actors
      WHERE enabled = 'YES'
     ORDER BY enabled_users;
    SELECT object_type,
           CONCAT(object_schema, '.', object_name) AS objects,
           enabled,
           timed
      FROM performance_schema.setup_objects
     WHERE enabled = 'YES'
     ORDER BY object_type, objects;
    SELECT name AS enabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'YES'
     ORDER BY enabled_consumers;
    IF (in_show_threads) THEN
        SELECT IF(name = 'thread/sql/one_connection',
                  CONCAT(processlist_user, '@', processlist_host),
                  REPLACE(name, 'thread/', '')) AS enabled_threads,
        TYPE AS thread_type
          FROM performance_schema.threads
         WHERE INSTRUMENTED = 'YES' AND name <> 'thread/innodb/thread_pool_thread'
         ORDER BY enabled_threads;
    END IF;
    IF (in_show_instruments) THEN
        SELECT name AS enabled_instruments,
               timed
          FROM performance_schema.setup_instruments
         WHERE enabled = 'YES'
         ORDER BY enabled_instruments;
    END IF;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_show_enabled_consumers
DELIMITER //
CREATE PROCEDURE `ps_setup_show_enabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently enabled consumers.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_enabled_consumers();\n             +---------------------------+\n             | enabled_consumers         |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n            '
BEGIN
    SELECT name AS enabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'YES'
     ORDER BY enabled_consumers;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_setup_show_enabled_instruments
DELIMITER //
CREATE PROCEDURE `ps_setup_show_enabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently enabled instruments.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_enabled_instruments();\n            '
BEGIN
    SELECT name AS enabled_instruments, timed
      FROM performance_schema.setup_instruments
     WHERE enabled = 'YES'
     ORDER BY enabled_instruments;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_statement_avg_latency_histogram
DELIMITER //
CREATE PROCEDURE `ps_statement_avg_latency_histogram`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Outputs a textual histogram graph of the average latency values\n             across all normalized queries tracked within the Performance Schema\n             events_statements_summary_by_digest table.\n             Can be used to show a very high level picture of what kind of\n             latency distribution statements running within this instance have.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_statement_avg_latency_histogram()\\G\n             *************************** 1. row ***************************\n             Performance Schema Statement Digest Average Latency Histogram:\n               . = 1 unit\n               * = 2 units\n               # = 3 units\n             (0 - 38ms)     240 | ################################################################################\n             (38 - 77ms)    38  | ......................................\n             (77 - 115ms)   3   | ...\n             (115 - 154ms)  62  | *******************************\n             (154 - 192ms)  3   | ...\n             (192 - 231ms)  0   |\n             (231 - 269ms)  0   |\n             (269 - 307ms)  0   |\n             (307 - 346ms)  0   |\n             (346 - 384ms)  1   | .\n             (384 - 423ms)  1   | .\n             (423 - 461ms)  0   |\n             (461 - 499ms)  0   |\n             (499 - 538ms)  0   |\n             (538 - 576ms)  0   |\n             (576 - 615ms)  1   | .\n               Total Statements: 350; Buckets: 16; Bucket Size: 38 ms;\n            '
BEGIN
SELECT CONCAT('\n',
       '\n  . = 1 unit',
       '\n  * = 2 units',
       '\n  # = 3 units\n',
       @label := CONCAT(@label_inner := CONCAT('\n(0 - ',
                                               ROUND((@bucket_size := (SELECT ROUND((MAX(avg_us) - MIN(avg_us)) / (@buckets := 16)) AS size
                                                                         FROM sys.x$ps_digest_avg_latency_distribution)) / (@unit_div := 1000)),
                                                (@unit := 'ms'), ')'),
                        REPEAT(' ', (@max_label_size := ((1 + LENGTH(ROUND((@bucket_size * 15) / @unit_div)) + 3 + LENGTH(ROUND(@bucket_size * 16) / @unit_div)) + 1)) - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us <= @bucket_size), 0)),
       REPEAT(' ', (@max_label_len := (@max_label_size + LENGTH((@total_queries := (SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution)))) + 1) - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < (@one_unit := 40), '.', IF(@count_in_bucket < (@two_unit := 80), '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND(@bucket_size / @unit_div), ' - ', ROUND((@bucket_size * 2) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size AND b1.avg_us <= @bucket_size * 2), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 2) / @unit_div), ' - ', ROUND((@bucket_size * 3) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 2 AND b1.avg_us <= @bucket_size * 3), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 3) / @unit_div), ' - ', ROUND((@bucket_size * 4) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 3 AND b1.avg_us <= @bucket_size * 4), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 4) / @unit_div), ' - ', ROUND((@bucket_size * 5) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 4 AND b1.avg_us <= @bucket_size * 5), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 5) / @unit_div), ' - ', ROUND((@bucket_size * 6) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 5 AND b1.avg_us <= @bucket_size * 6), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 6) / @unit_div), ' - ', ROUND((@bucket_size * 7) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 6 AND b1.avg_us <= @bucket_size * 7), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 7) / @unit_div), ' - ', ROUND((@bucket_size * 8) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 7 AND b1.avg_us <= @bucket_size * 8), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 8) / @unit_div), ' - ', ROUND((@bucket_size * 9) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 8 AND b1.avg_us <= @bucket_size * 9), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 9) / @unit_div), ' - ', ROUND((@bucket_size * 10) / @unit_div), @unit, ')'),
                         REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                         @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                       FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                      WHERE b1.avg_us > @bucket_size * 9 AND b1.avg_us <= @bucket_size * 10), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 10) / @unit_div), ' - ', ROUND((@bucket_size * 11) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 10 AND b1.avg_us <= @bucket_size * 11), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 11) / @unit_div), ' - ', ROUND((@bucket_size * 12) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 11 AND b1.avg_us <= @bucket_size * 12), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 12) / @unit_div), ' - ', ROUND((@bucket_size * 13) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 12 AND b1.avg_us <= @bucket_size * 13), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 13) / @unit_div), ' - ', ROUND((@bucket_size * 14) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 13 AND b1.avg_us <= @bucket_size * 14), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 14) / @unit_div), ' - ', ROUND((@bucket_size * 15) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 14 AND b1.avg_us <= @bucket_size * 15), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 15) / @unit_div), ' - ', ROUND((@bucket_size * 16) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 15 AND b1.avg_us <= @bucket_size * 16), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       '\n\n  Total Statements: ', @total_queries, '; Buckets: ', @buckets , '; Bucket Size: ', ROUND(@bucket_size / @unit_div) , ' ', @unit, ';\n'
      ) AS `Performance Schema Statement Digest Average Latency Histogram`;
END//
DELIMITER ;

-- Dumping structure for function sys.ps_thread_account
DELIMITER //
CREATE FUNCTION `ps_thread_account`(in_thread_id BIGINT UNSIGNED
    ) RETURNS text CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Return the user@host account for the given Performance Schema thread id.\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The id of the thread to return the account for.\n             Example\n             mysql> select thread_id, processlist_user, processlist_host from performance_schema.threads where type = ''foreground'';\n              +-----------+------------------+------------------+\n              | thread_id | processlist_user | processlist_host |\n              +-----------+------------------+------------------+\n              |        23 | NULL             | NULL             |\n              |        30 | root             | localhost        |\n              |        31 | msandbox         | localhost        |\n              |        32 | msandbox         | localhost        |\n              +-----------+------------------+------------------+\n              4 rows in set (0.00 sec)\n              mysql> select sys.ps_thread_account(31);\n              +---------------------------+\n              | sys.ps_thread_account(31) |\n              +---------------------------+\n              | msandbox@localhost        |\n              +---------------------------+\n              1 row in set (0.00 sec)\n            '
BEGIN
    RETURN (SELECT IF(
                      type = 'FOREGROUND',
                      CONCAT(processlist_user, '@', processlist_host),
                      type
                     ) AS account
              FROM `performance_schema`.`threads`
             WHERE thread_id = in_thread_id);
END//
DELIMITER ;

-- Dumping structure for function sys.ps_thread_id
DELIMITER //
CREATE FUNCTION `ps_thread_id`(in_connection_id BIGINT UNSIGNED
    ) RETURNS bigint(20) unsigned
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Return the Performance Schema THREAD_ID for the specified connection ID.\n             Parameters\n             in_connection_id (BIGINT UNSIGNED):\n               The id of the connection to return the thread id for. If NULL, the current\n               connection thread id is returned.\n             Example\n             mysql> SELECT sys.ps_thread_id(79);\n             +----------------------+\n             | sys.ps_thread_id(79) |\n             +----------------------+\n             |                   98 |\n             +----------------------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.ps_thread_id(CONNECTION_ID());\n             +-----------------------------------+\n             | sys.ps_thread_id(CONNECTION_ID()) |\n             +-----------------------------------+\n             |                                98 |\n             +-----------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN (SELECT THREAD_ID
              FROM `performance_schema`.`threads`
             WHERE PROCESSLIST_ID = IFNULL(in_connection_id, CONNECTION_ID())
           );
END//
DELIMITER ;

-- Dumping structure for function sys.ps_thread_stack
DELIMITER //
CREATE FUNCTION `ps_thread_stack`(thd_id BIGINT UNSIGNED,
        debug BOOLEAN
    ) RETURNS longtext CHARSET latin1 COLLATE latin1_swedish_ci
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Outputs a JSON formatted stack of all statements, stages and events\n             within Performance Schema for the specified thread.\n             Parameters\n             thd_id (BIGINT UNSIGNED):\n               The id of the thread to trace. This should match the thread_id\n               column from the performance_schema.threads table.\n             in_verbose (BOOLEAN):\n               Include file:lineno information in the events.\n             Example\n             (line separation added for output)\n             mysql> SELECT sys.ps_thread_stack(37, FALSE) AS thread_stack\\G\n             *************************** 1. row ***************************\n             thread_stack: {"rankdir": "LR","nodesep": "0.10","stack_created": "2014-02-19 13:39:03",\n             "mysql_version": "5.7.3-m13","mysql_user": "root@localhost","events":\n             [{"nesting_event_id": "0", "event_id": "10", "timer_wait": 256.35, "event_info":\n             "sql/select", "wait_info": "select @@version_comment limit 1\\nerrors: 0\\nwarnings: 0\\nlock time:\n             ...\n            '
BEGIN
    DECLARE json_objects LONGTEXT;
    
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE processlist_id = CONNECTION_ID();
    
    SET SESSION group_concat_max_len=@@global.max_allowed_packet;
    SELECT GROUP_CONCAT(CONCAT( '{'
              , CONCAT_WS( ', '
              , CONCAT('"nesting_event_id": "', IF(nesting_event_id IS NULL, '0', nesting_event_id), '"')
              , CONCAT('"event_id": "', event_id, '"')
              , CONCAT( '"timer_wait": ', ROUND(timer_wait/1000000, 2))
              , CONCAT( '"event_info": "'
                  , CASE
                        WHEN event_name NOT LIKE 'wait/io%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -2), '\\', '\\\\')
                        WHEN event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -4), '\\', '\\\\')
                        ELSE event_name
                    END
                  , '"'
              )
              , CONCAT( '"wait_info": "', IFNULL(wait_info, ''), '"')
              , CONCAT( '"source": "', IF(true AND event_name LIKE 'wait%', IFNULL(wait_info, ''), ''), '"')
              , CASE
                     WHEN event_name LIKE 'wait/io/file%'      THEN '"event_type": "io/file"'
                     WHEN event_name LIKE 'wait/io/table%'     THEN '"event_type": "io/table"'
                     WHEN event_name LIKE 'wait/io/socket%'    THEN '"event_type": "io/socket"'
                     WHEN event_name LIKE 'wait/synch/mutex%'  THEN '"event_type": "synch/mutex"'
                     WHEN event_name LIKE 'wait/synch/cond%'   THEN '"event_type": "synch/cond"'
                     WHEN event_name LIKE 'wait/synch/rwlock%' THEN '"event_type": "synch/rwlock"'
                     WHEN event_name LIKE 'wait/lock%'         THEN '"event_type": "lock"'
                     WHEN event_name LIKE 'statement/%'        THEN '"event_type": "stmt"'
                     WHEN event_name LIKE 'stage/%'            THEN '"event_type": "stage"'
                     WHEN event_name LIKE '%idle%'             THEN '"event_type": "idle"'
                     ELSE ''
                END
            )
            , '}'
          )
          ORDER BY event_id ASC SEPARATOR ',') event
    INTO json_objects
    FROM (
          
          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,
                  CONCAT(sql_text, '\\n',
                         'errors: ', errors, '\\n',
                         'warnings: ', warnings, '\\n',
                         'lock time: ', ROUND(lock_time/1000000, 2),'us\\n',
                         'rows affected: ', rows_affected, '\\n',
                         'rows sent: ', rows_sent, '\\n',
                         'rows examined: ', rows_examined, '\\n',
                         'tmp tables: ', created_tmp_tables, '\\n',
                         'tmp disk tables: ', created_tmp_disk_tables, '\\n',
                         'select scan: ', select_scan, '\\n',
                         'select full join: ', select_full_join, '\\n',
                         'select full range join: ', select_full_range_join, '\\n',
                         'select range: ', select_range, '\\n',
                         'select range check: ', select_range_check, '\\n',
                         'sort merge passes: ', sort_merge_passes, '\\n',
                         'sort rows: ', sort_rows, '\\n',
                         'sort range: ', sort_range, '\\n',
                         'sort scan: ', sort_scan, '\\n',
                         'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n',
                         'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n'
                         ) AS wait_info
             FROM performance_schema.events_statements_history_long WHERE thread_id = thd_id)
          UNION
          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info
             FROM performance_schema.events_stages_history_long WHERE thread_id = thd_id)
          UNION 
          (SELECT thread_id, event_id,
                  CONCAT(event_name ,
                         IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''),
                         IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''),
                         IF(event_name LIKE 'wait/io/file%', '\\n', ''),
                         IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''),
                         IF(object_name IS NOT NULL,
                            IF (event_name LIKE 'wait/io/socket%',
                                CONCAT(IF (object_name LIKE ':0%', @@socket, object_name)),
                                object_name),
                            ''),
                          IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''),'\\n'
                         ) AS event_name,
                  timer_wait, timer_start, nesting_event_id, source AS wait_info
             FROM performance_schema.events_waits_history_long WHERE thread_id = thd_id)) events
    ORDER BY event_id;
    RETURN CONCAT('{',
                  CONCAT_WS(',',
                            '"rankdir": "LR"',
                            '"nodesep": "0.10"',
                            CONCAT('"stack_created": "', NOW(), '"'),
                            CONCAT('"mysql_version": "', VERSION(), '"'),
                            CONCAT('"mysql_user": "', CURRENT_USER(), '"'),
                            CONCAT('"events": [', IFNULL(json_objects,''), ']')
                           ),
                  '}');
END//
DELIMITER ;

-- Dumping structure for function sys.ps_thread_trx_info
DELIMITER //
CREATE FUNCTION `ps_thread_trx_info`(in_thread_id BIGINT UNSIGNED
    ) RETURNS longtext CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns a JSON object with info on the given threads current transaction,\n             and the statements it has already executed, derived from the\n             performance_schema.events_transactions_current and\n             performance_schema.events_statements_history tables (so the consumers\n             for these also have to be enabled within Performance Schema to get full\n             data in the object).\n             When the output exceeds the default truncation length (65535), a JSON error\n             object is returned, such as:\n             { "error": "Trx info truncated: Row 6 was cut by GROUP_CONCAT()" }\n             Similar error objects are returned for other warnings/and exceptions raised\n             when calling the function.\n             The max length of the output of this function can be controlled with the\n             ps_thread_trx_info.max_length variable set via sys_config, or the\n             @sys.ps_thread_trx_info.max_length user variable, as appropriate.\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The id of the thread to return the transaction info for.\n             Example\n             SELECT sys.ps_thread_trx_info(48)\\G\n             *************************** 1. row ***************************\n             sys.ps_thread_trx_info(48): [\n               {\n                 "time": "790.70 us",\n                 "state": "COMMITTED",\n                 "mode": "READ WRITE",\n                 "autocommitted": "NO",\n                 "gtid": "AUTOMATIC",\n                 "isolation": "REPEATABLE READ",\n                 "statements_executed": [\n                   {\n                     "sql_text": "INSERT INTO info VALUES (1, ''foo'')",\n                     "time": "471.02 us",\n                     "schema": "trx",\n                     "rows_examined": 0,\n                     "rows_affected": 1,\n                     "rows_sent": 0,\n                     "tmp_tables": 0,\n                     "tmp_disk_tables": 0,\n                     "sort_rows": 0,\n                     "sort_merge_passes": 0\n                   },\n                   {\n                     "sql_text": "COMMIT",\n                     "time": "254.42 us",\n                     "schema": "trx",\n                     "rows_examined": 0,\n                     "rows_affected": 0,\n                     "rows_sent": 0,\n                     "tmp_tables": 0,\n                     "tmp_disk_tables": 0,\n                     "sort_rows": 0,\n                     "sort_merge_passes": 0\n                   }\n                 ]\n               },\n               {\n                 "time": "426.20 us",\n                 "state": "COMMITTED",\n                 "mode": "READ WRITE",\n                 "autocommitted": "NO",\n                 "gtid": "AUTOMATIC",\n                 "isolation": "REPEATABLE READ",\n                 "statements_executed": [\n                   {\n                     "sql_text": "INSERT INTO info VALUES (2, ''bar'')",\n                     "time": "107.33 us",\n                     "schema": "trx",\n                     "rows_examined": 0,\n                     "rows_affected": 1,\n                     "rows_sent": 0,\n                     "tmp_tables": 0,\n                     "tmp_disk_tables": 0,\n                     "sort_rows": 0,\n                     "sort_merge_passes": 0\n                   },\n                   {\n                     "sql_text": "COMMIT",\n                     "time": "213.23 us",\n                     "schema": "trx",\n                     "rows_examined": 0,\n                     "rows_affected": 0,\n                     "rows_sent": 0,\n                     "tmp_tables": 0,\n                     "tmp_disk_tables": 0,\n                     "sort_rows": 0,\n                     "sort_merge_passes": 0\n                   }\n                 ]\n               }\n             ]\n             1 row in set (0.03 sec)\n            '
BEGIN
    DECLARE v_output LONGTEXT DEFAULT '{}';
    DECLARE v_msg_text TEXT DEFAULT '';
    DECLARE v_signal_msg TEXT DEFAULT '';
    DECLARE v_mysql_errno INT;
    DECLARE v_max_output_len BIGINT;
    DECLARE EXIT HANDLER FOR SQLWARNING, SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            v_msg_text = MESSAGE_TEXT,
            v_mysql_errno = MYSQL_ERRNO;
        IF v_mysql_errno = 1260 THEN
            SET v_signal_msg = CONCAT('{ "error": "Trx info truncated: ', v_msg_text, '" }');
        ELSE
            SET v_signal_msg = CONCAT('{ "error": "', v_msg_text, '" }');
        END IF;
        RETURN v_signal_msg;
    END;
    IF (@sys.ps_thread_trx_info.max_length IS NULL) THEN
        SET @sys.ps_thread_trx_info.max_length = sys.sys_get_config('ps_thread_trx_info.max_length', 65535);
    END IF;
    IF (@sys.ps_thread_trx_info.max_length != @@session.group_concat_max_len) THEN
        SET @old_group_concat_max_len = @@session.group_concat_max_len;
        SET v_max_output_len = (@sys.ps_thread_trx_info.max_length - 5);
        SET SESSION group_concat_max_len = v_max_output_len;
    END IF;
    SET v_output = (
        SELECT CONCAT('[', IFNULL(GROUP_CONCAT(trx_info ORDER BY event_id), ''), '\n]') AS trx_info
          FROM (SELECT trxi.thread_id,
                       trxi.event_id,
                       GROUP_CONCAT(
                         IFNULL(
                           CONCAT('\n  {\n',
                                  '    "time": "', IFNULL(sys.format_time(trxi.timer_wait), ''), '",\n',
                                  '    "state": "', IFNULL(trxi.state, ''), '",\n',
                                  '    "mode": "', IFNULL(trxi.access_mode, ''), '",\n',
                                  '    "autocommitted": "', IFNULL(trxi.autocommit, ''), '",\n',
                                  '    "gtid": "', IFNULL(trxi.gtid, ''), '",\n',
                                  '    "isolation": "', IFNULL(trxi.isolation_level, ''), '",\n',
                                  '    "statements_executed": [', IFNULL(s.stmts, ''), IF(s.stmts IS NULL, ' ]\n', '\n    ]\n'),
                                  '  }'
                           ),
                           '')
                         ORDER BY event_id) AS trx_info
                  FROM (
                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level
                           FROM performance_schema.events_transactions_current
                          WHERE thread_id = in_thread_id
                            AND end_event_id IS NULL)
                        UNION
                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level
                           FROM performance_schema.events_transactions_history
                          WHERE thread_id = in_thread_id)
                       ) AS trxi
                  LEFT JOIN (SELECT thread_id,
                                    nesting_event_id,
                                    GROUP_CONCAT(
                                      IFNULL(
                                        CONCAT('\n      {\n',
                                               '        "sql_text": "', IFNULL(sys.format_statement(REPLACE(sql_text, '\\', '\\\\')), ''), '",\n',
                                               '        "time": "', IFNULL(sys.format_time(timer_wait), ''), '",\n',
                                               '        "schema": "', IFNULL(current_schema, ''), '",\n',
                                               '        "rows_examined": ', IFNULL(rows_examined, ''), ',\n',
                                               '        "rows_affected": ', IFNULL(rows_affected, ''), ',\n',
                                               '        "rows_sent": ', IFNULL(rows_sent, ''), ',\n',
                                               '        "tmp_tables": ', IFNULL(created_tmp_tables, ''), ',\n',
                                               '        "tmp_disk_tables": ', IFNULL(created_tmp_disk_tables, ''), ',\n',
                                               '        "sort_rows": ', IFNULL(sort_rows, ''), ',\n',
                                               '        "sort_merge_passes": ', IFNULL(sort_merge_passes, ''), '\n',
                                               '      }'), '') ORDER BY event_id) AS stmts
                               FROM performance_schema.events_statements_history
                              WHERE sql_text IS NOT NULL
                                AND thread_id = in_thread_id
                              GROUP BY thread_id, nesting_event_id
                            ) AS s
                    ON trxi.thread_id = s.thread_id
                   AND trxi.event_id = s.nesting_event_id
                 WHERE trxi.thread_id = in_thread_id
                 GROUP BY trxi.thread_id, trxi.event_id
                ) trxs
          GROUP BY thread_id
    );
    IF (@old_group_concat_max_len IS NOT NULL) THEN
        SET SESSION group_concat_max_len = @old_group_concat_max_len;
    END IF;
    RETURN v_output;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_trace_statement_digest
DELIMITER //
CREATE PROCEDURE `ps_trace_statement_digest`(
        IN in_digest VARCHAR(32),
        IN in_runtime INT,
        IN in_interval DECIMAL(2,2),
        IN in_start_fresh BOOLEAN,
        IN in_auto_enable BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Traces all instrumentation within Performance Schema for a specific\n             Statement Digest.\n             When finding a statement of interest within the\n             performance_schema.events_statements_summary_by_digest table, feed\n             the DIGEST MD5 value in to this procedure, set how long to poll for,\n             and at what interval to poll, and it will generate a report of all\n             statistics tracked within Performance Schema for that digest for the\n             interval.\n             It will also attempt to generate an EXPLAIN for the longest running\n             example of the digest during the interval. Note this may fail, as:\n                * Performance Schema truncates long SQL_TEXT values (and hence the\n                  EXPLAIN will fail due to parse errors)\n                * the default schema is sys (so tables that are not fully qualified\n                  in the query may not be found)\n                * some queries such as SHOW are not supported in EXPLAIN.\n             When the EXPLAIN fails, the error will be ignored and no EXPLAIN\n             output generated.\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             in_digest (VARCHAR(32)):\n               The statement digest identifier you would like to analyze\n             in_runtime (INT):\n               The number of seconds to run analysis for\n             in_interval (DECIMAL(2,2)):\n               The interval (in seconds, may be fractional) at which to try\n               and take snapshots\n             in_start_fresh (BOOLEAN):\n               Whether to TRUNCATE the events_statements_history_long and\n               events_stages_history_long tables before starting\n             in_auto_enable (BOOLEAN):\n               Whether to automatically turn on required consumers\n             Example\n             mysql> call ps_trace_statement_digest(''891ec6860f98ba46d89dd20b0c03652c'', 10, 0.1, true, true);\n             +--------------------+\n             | SUMMARY STATISTICS |\n             +--------------------+\n             | SUMMARY STATISTICS |\n             +--------------------+\n             1 row in set (9.11 sec)\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             | executions | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scans |\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             |         21 | 4.11 ms   | 2.00 ms   |         0 |            21 |          0 |          0 |\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             1 row in set (9.11 sec)\n             +------------------------------------------+-------+-----------+\n             | event_name                               | count | latency   |\n             +------------------------------------------+-------+-----------+\n             | stage/sql/checking query cache for query |    16 | 724.37 us |\n             | stage/sql/statistics                     |    16 | 546.92 us |\n             | stage/sql/freeing items                  |    18 | 520.11 us |\n             | stage/sql/init                           |    51 | 466.80 us |\n             ...\n             | stage/sql/cleaning up                    |    18 | 11.92 us  |\n             | stage/sql/executing                      |    16 | 6.95 us   |\n             +------------------------------------------+-------+-----------+\n             17 rows in set (9.12 sec)\n             +---------------------------+\n             | LONGEST RUNNING STATEMENT |\n             +---------------------------+\n             | LONGEST RUNNING STATEMENT |\n             +---------------------------+\n             1 row in set (9.16 sec)\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             | thread_id | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scan |\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             |    166646 | 618.43 us | 1.00 ms   |         0 |             1 |          0 |         0 |\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             1 row in set (9.16 sec)\n             // Truncated for clarity...\n             +-----------------------------------------------------------------+\n             | sql_text                                                        |\n             +-----------------------------------------------------------------+\n             | select hibeventhe0_.id as id1382_, hibeventhe0_.createdTime ... |\n             +-----------------------------------------------------------------+\n             1 row in set (9.17 sec)\n             +------------------------------------------+-----------+\n             | event_name                               | latency   |\n             +------------------------------------------+-----------+\n             | stage/sql/init                           | 8.61 us   |\n             | stage/sql/Waiting for query cache lock   | 453.23 us |\n             | stage/sql/init                           | 331.07 ns |\n             | stage/sql/checking query cache for query | 43.04 us  |\n             ...\n             | stage/sql/freeing items                  | 30.46 us  |\n             | stage/sql/cleaning up                    | 662.13 ns |\n             +------------------------------------------+-----------+\n             18 rows in set (9.23 sec)\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             | id | select_type | table        | type  | possible_keys | key       | key_len | ref         | rows | Extra |\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             |  1 | SIMPLE      | hibeventhe0_ | const | fixedTime     | fixedTime | 775     | const,const |    1 | NULL  |\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             1 row in set (9.27 sec)\n             Query OK, 0 rows affected (9.28 sec)\n            '
BEGIN
    DECLARE v_start_fresh BOOLEAN DEFAULT false;
    DECLARE v_auto_enable BOOLEAN DEFAULT false;
    DECLARE v_explain     BOOLEAN DEFAULT true;
    DECLARE v_this_thread_enabed ENUM('YES', 'NO');
    DECLARE v_runtime INT DEFAULT 0;
    DECLARE v_start INT DEFAULT 0;
    DECLARE v_found_stmts INT;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    DROP TEMPORARY TABLE IF EXISTS stmt_trace;
    CREATE TEMPORARY TABLE stmt_trace (
        thread_id BIGINT UNSIGNED,
        timer_start BIGINT UNSIGNED,
        event_id BIGINT UNSIGNED,
        sql_text longtext,
        timer_wait BIGINT UNSIGNED,
        lock_time BIGINT UNSIGNED,
        errors BIGINT UNSIGNED,
        mysql_errno INT,
        rows_sent BIGINT UNSIGNED,
        rows_affected BIGINT UNSIGNED,
        rows_examined BIGINT UNSIGNED,
        created_tmp_tables BIGINT UNSIGNED,
        created_tmp_disk_tables BIGINT UNSIGNED,
        no_index_used BIGINT UNSIGNED,
        PRIMARY KEY (thread_id, timer_start)
    );
    DROP TEMPORARY TABLE IF EXISTS stmt_stages;
    CREATE TEMPORARY TABLE stmt_stages (
       event_id BIGINT UNSIGNED,
       stmt_id BIGINT UNSIGNED,
       event_name VARCHAR(128),
       timer_wait BIGINT UNSIGNED,
       PRIMARY KEY (event_id)
    );
    SET v_start_fresh = in_start_fresh;
    IF v_start_fresh THEN
        TRUNCATE TABLE performance_schema.events_statements_history_long;
        TRUNCATE TABLE performance_schema.events_stages_history_long;
    END IF;
    SET v_auto_enable = in_auto_enable;
    IF v_auto_enable THEN
        CALL sys.ps_setup_save(0);
        UPDATE performance_schema.threads
           SET INSTRUMENTED = IF(PROCESSLIST_ID IS NOT NULL, 'YES', 'NO');
        UPDATE performance_schema.setup_consumers
           SET ENABLED = 'YES'
         WHERE NAME NOT LIKE '%\_history'
               AND NAME NOT LIKE 'events_wait%'
               AND NAME NOT LIKE 'events_transactions%'
               AND NAME <> 'statements_digest';
        UPDATE performance_schema.setup_instruments
           SET ENABLED = 'YES',
               TIMED   = 'YES'
         WHERE NAME LIKE 'statement/%' OR NAME LIKE 'stage/%';
    END IF;
    WHILE v_runtime < in_runtime DO
        SELECT UNIX_TIMESTAMP() INTO v_start;
        INSERT IGNORE INTO stmt_trace
        SELECT thread_id, timer_start, event_id, sql_text, timer_wait, lock_time, errors, mysql_errno,
               rows_sent, rows_affected, rows_examined, created_tmp_tables, created_tmp_disk_tables, no_index_used
          FROM performance_schema.events_statements_history_long
        WHERE digest = in_digest;
        INSERT IGNORE INTO stmt_stages
        SELECT stages.event_id, stmt_trace.event_id,
               stages.event_name, stages.timer_wait
          FROM performance_schema.events_stages_history_long AS stages
          JOIN stmt_trace ON stages.nesting_event_id = stmt_trace.event_id;
        SELECT SLEEP(in_interval) INTO @sleep;
        SET v_runtime = v_runtime + (UNIX_TIMESTAMP() - v_start);
    END WHILE;
    SELECT "SUMMARY STATISTICS";
    SELECT COUNT(*) executions,
           sys.format_time(SUM(timer_wait)) AS exec_time,
           sys.format_time(SUM(lock_time)) AS lock_time,
           SUM(rows_sent) AS rows_sent,
           SUM(rows_affected) AS rows_affected,
           SUM(rows_examined) AS rows_examined,
           SUM(created_tmp_tables) AS tmp_tables,
           SUM(no_index_used) AS full_scans
      FROM stmt_trace;
    SELECT event_name,
           COUNT(*) as count,
           sys.format_time(SUM(timer_wait)) as latency
      FROM stmt_stages
     GROUP BY event_name
     ORDER BY SUM(timer_wait) DESC;
    SELECT "LONGEST RUNNING STATEMENT";
    SELECT thread_id,
           sys.format_time(timer_wait) AS exec_time,
           sys.format_time(lock_time) AS lock_time,
           rows_sent,
           rows_affected,
           rows_examined,
           created_tmp_tables AS tmp_tables,
           no_index_used AS full_scan
      FROM stmt_trace
     ORDER BY timer_wait DESC LIMIT 1;
    SELECT sql_text
      FROM stmt_trace
     ORDER BY timer_wait DESC LIMIT 1;
    SELECT sql_text, event_id INTO @sql, @sql_id
      FROM stmt_trace
    ORDER BY timer_wait DESC LIMIT 1;
    IF (@sql_id IS NOT NULL) THEN
        SELECT event_name,
               sys.format_time(timer_wait) as latency
          FROM stmt_stages
         WHERE stmt_id = @sql_id
         ORDER BY event_id;
    END IF;
    DROP TEMPORARY TABLE stmt_trace;
    DROP TEMPORARY TABLE stmt_stages;
    IF (@sql IS NOT NULL) THEN
        SET @stmt := CONCAT("EXPLAIN FORMAT=JSON ", @sql);
        BEGIN
            DECLARE CONTINUE HANDLER FOR 1064, 1146 SET v_explain = false;
            PREPARE explain_stmt FROM @stmt;
        END;
        IF (v_explain) THEN
            EXECUTE explain_stmt;
            DEALLOCATE PREPARE explain_stmt;
        END IF;
    END IF;
    IF v_auto_enable THEN
        CALL sys.ps_setup_reload_saved();
    END IF;
    IF (v_this_thread_enabed = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    SET sql_log_bin = @log_bin;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_trace_thread
DELIMITER //
CREATE PROCEDURE `ps_trace_thread`(
        IN in_thread_id BIGINT UNSIGNED,
        IN in_outfile VARCHAR(255),
        IN in_max_runtime DECIMAL(20,2),
        IN in_interval DECIMAL(20,2),
        IN in_start_fresh BOOLEAN,
        IN in_auto_setup BOOLEAN,
        IN in_debug BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Dumps all data within Performance Schema for an instrumented thread,\n             to create a DOT formatted graph file.\n             Each resultset returned from the procedure should be used for a complete graph\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The thread that you would like a stack trace for\n             in_outfile  (VARCHAR(255)):\n               The filename the dot file will be written to\n             in_max_runtime (DECIMAL(20,2)):\n               The maximum time to keep collecting data.\n               Use NULL to get the default which is 60 seconds.\n             in_interval (DECIMAL(20,2)):\n               How long to sleep between data collections.\n               Use NULL to get the default which is 1 second.\n             in_start_fresh (BOOLEAN):\n               Whether to reset all Performance Schema data before tracing.\n             in_auto_setup (BOOLEAN):\n               Whether to disable all other threads and enable all consumers/instruments.\n               This will also reset the settings at the end of the run.\n             in_debug (BOOLEAN):\n               Whether you would like to include file:lineno in the graph\n             Example\n             mysql> CALL sys.ps_trace_thread(25, CONCAT(''/tmp/stack-'', REPLACE(NOW(), '' '', ''-''), ''.dot''), NULL, NULL, TRUE, TRUE, TRUE);\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.00 sec)\n             +---------------------------------------------+\n             | Info                                        |\n             +---------------------------------------------+\n             | Data collection starting for THREAD_ID = 25 |\n             +---------------------------------------------+\n             1 row in set (0.03 sec)\n             +-----------------------------------------------------------+\n             | Info                                                      |\n             +-----------------------------------------------------------+\n             | Stack trace written to /tmp/stack-2014-02-16-21:18:41.dot |\n             +-----------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +-------------------------------------------------------------------+\n             | Convert to PDF                                                    |\n             +-------------------------------------------------------------------+\n             | dot -Tpdf -o /tmp/stack_25.pdf /tmp/stack-2014-02-16-21:18:41.dot |\n             +-------------------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +-------------------------------------------------------------------+\n             | Convert to PNG                                                    |\n             +-------------------------------------------------------------------+\n             | dot -Tpng -o /tmp/stack_25.png /tmp/stack-2014-02-16-21:18:41.dot |\n             +-------------------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (60.32 sec)\n            '
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_start, v_runtime DECIMAL(20,2) DEFAULT 0.0;
    DECLARE v_min_event_id bigint unsigned DEFAULT 0;
    DECLARE v_this_thread_enabed ENUM('YES', 'NO');
    DECLARE v_event longtext;
    DECLARE c_stack CURSOR FOR
        SELECT CONCAT(IF(nesting_event_id IS NOT NULL, CONCAT(nesting_event_id, ' -> '), ''),
                    event_id, '; ', event_id, ' [label="',
                    '(', sys.format_time(timer_wait), ') ',
                    IF (event_name NOT LIKE 'wait/io%',
                        SUBSTRING_INDEX(event_name, '/', -2),
                        IF (event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%',
                            SUBSTRING_INDEX(event_name, '/', -4),
                            event_name)
                        ),
                    IF (event_name LIKE 'statement/%', IFNULL(CONCAT('\\n', wait_info), ''), ''),
                    IF (in_debug AND event_name LIKE 'wait%', wait_info, ''),
                    '", ',
                    CASE WHEN event_name LIKE 'wait/io/file%' THEN
                           'shape=box, style=filled, color=red'
                         WHEN event_name LIKE 'wait/io/table%' THEN
                           'shape=box, style=filled, color=green'
                         WHEN event_name LIKE 'wait/io/socket%' THEN
                           'shape=box, style=filled, color=yellow'
                         WHEN event_name LIKE 'wait/synch/mutex%' THEN
                           'style=filled, color=lightskyblue'
                         WHEN event_name LIKE 'wait/synch/cond%' THEN
                           'style=filled, color=darkseagreen3'
                         WHEN event_name LIKE 'wait/synch/rwlock%' THEN
                           'style=filled, color=orchid'
                         WHEN event_name LIKE 'wait/lock%' THEN
                           'shape=box, style=filled, color=tan'
                         WHEN event_name LIKE 'statement/%' THEN
                           CONCAT('shape=box, style=bold',
                                  CASE WHEN event_name LIKE 'statement/com/%' THEN
                                         ' style=filled, color=darkseagreen'
                                       ELSE
                                         IF((timer_wait/1000000000000) > @@long_query_time,
                                            ' style=filled, color=red',
                                            ' style=filled, color=lightblue')
                                  END
                           )
                         WHEN event_name LIKE 'stage/%' THEN
                           'style=filled, color=slategray3'
                         WHEN event_name LIKE '%idle%' THEN
                           'shape=box, style=filled, color=firebrick3'
                         ELSE '' END,
                     '];\n'
                   ) event, event_id
        FROM (
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,
                     CONCAT(sql_text, '\\n',
                            'errors: ', errors, '\\n',
                            'warnings: ', warnings, '\\n',
                            'lock time: ', sys.format_time(lock_time),'\\n',
                            'rows affected: ', rows_affected, '\\n',
                            'rows sent: ', rows_sent, '\\n',
                            'rows examined: ', rows_examined, '\\n',
                            'tmp tables: ', created_tmp_tables, '\\n',
                            'tmp disk tables: ', created_tmp_disk_tables, '\\n'
                            'select scan: ', select_scan, '\\n',
                            'select full join: ', select_full_join, '\\n',
                            'select full range join: ', select_full_range_join, '\\n',
                            'select range: ', select_range, '\\n',
                            'select range check: ', select_range_check, '\\n',
                            'sort merge passes: ', sort_merge_passes, '\\n',
                            'sort rows: ', sort_rows, '\\n',
                            'sort range: ', sort_range, '\\n',
                            'sort scan: ', sort_scan, '\\n',
                            'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n',
                            'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n'
                     ) AS wait_info
                FROM performance_schema.events_statements_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info
                FROM performance_schema.events_stages_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION
             (SELECT thread_id, event_id,
                     CONCAT(event_name,
                            IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''),
                            IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''),
                            IF(event_name LIKE 'wait/io/file%', '\\n', ''),
                            IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''),
                            IF(object_name IS NOT NULL,
                               IF (event_name LIKE 'wait/io/socket%',
                                   CONCAT('\\n', IF (object_name LIKE ':0%', @@socket, object_name)),
                                   object_name),
                               ''
                            ),
                            IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n'
                     ) AS event_name,
                     timer_wait, timer_start, nesting_event_id, source AS wait_info
                FROM performance_schema.events_waits_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
           ) events
       ORDER BY event_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    IF (in_auto_setup) THEN
        CALL sys.ps_setup_save(0);
        DELETE FROM performance_schema.setup_actors;
        UPDATE performance_schema.threads
           SET INSTRUMENTED = IF(THREAD_ID = in_thread_id, 'YES', 'NO');
        UPDATE performance_schema.setup_consumers
           SET ENABLED = 'YES'
         WHERE NAME NOT LIKE '%\_history';
        UPDATE performance_schema.setup_instruments
           SET ENABLED = 'YES',
               TIMED   = 'YES';
    END IF;
    IF (in_start_fresh) THEN
        TRUNCATE performance_schema.events_statements_history_long;
        TRUNCATE performance_schema.events_stages_history_long;
        TRUNCATE performance_schema.events_waits_history_long;
    END IF;
    DROP TEMPORARY TABLE IF EXISTS tmp_events;
    CREATE TEMPORARY TABLE tmp_events (
      event_id bigint unsigned NOT NULL,
      event longblob,
      PRIMARY KEY (event_id)
    );
    INSERT INTO tmp_events VALUES (0, CONCAT('digraph events { rankdir=LR; nodesep=0.10;\n',
                                             '// Stack created .....: ', NOW(), '\n',
                                             '// MySQL version .....: ', VERSION(), '\n',
                                             '// MySQL hostname ....: ', @@hostname, '\n',
                                             '// MySQL port ........: ', @@port, '\n',
                                             '// MySQL socket ......: ', @@socket, '\n',
                                             '// MySQL user ........: ', CURRENT_USER(), '\n'));
    SELECT CONCAT('Data collection starting for THREAD_ID = ', in_thread_id) AS 'Info';
    SET v_min_event_id = 0,
        v_start        = UNIX_TIMESTAMP(),
        in_interval    = IFNULL(in_interval, 1.00),
        in_max_runtime = IFNULL(in_max_runtime, 60.00);
    WHILE (v_runtime < in_max_runtime
           AND (SELECT INSTRUMENTED FROM performance_schema.threads WHERE THREAD_ID = in_thread_id) = 'YES') DO
        SET v_done = FALSE;
        OPEN c_stack;
        c_stack_loop: LOOP
            FETCH c_stack INTO v_event, v_min_event_id;
            IF v_done THEN
                LEAVE c_stack_loop;
            END IF;
            IF (LENGTH(v_event) > 0) THEN
                INSERT INTO tmp_events VALUES (v_min_event_id, v_event);
            END IF;
        END LOOP;
        CLOSE c_stack;
        SELECT SLEEP(in_interval) INTO @sleep;
        SET v_runtime = (UNIX_TIMESTAMP() - v_start);
    END WHILE;
    INSERT INTO tmp_events VALUES (v_min_event_id+1, '}');
    SET @query = CONCAT('SELECT event FROM tmp_events ORDER BY event_id INTO OUTFILE ''', in_outfile, ''' FIELDS ESCAPED BY '''' LINES TERMINATED BY ''''');
    PREPARE stmt_output FROM @query;
    EXECUTE stmt_output;
    DEALLOCATE PREPARE stmt_output;
    SELECT CONCAT('Stack trace written to ', in_outfile) AS 'Info';
    SELECT CONCAT('dot -Tpdf -o /tmp/stack_', in_thread_id, '.pdf ', in_outfile) AS 'Convert to PDF';
    SELECT CONCAT('dot -Tpng -o /tmp/stack_', in_thread_id, '.png ', in_outfile) AS 'Convert to PNG';
    DROP TEMPORARY TABLE tmp_events;
    IF (in_auto_setup) THEN
        CALL sys.ps_setup_reload_saved();
    END IF;
    IF (v_this_thread_enabed = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    SET sql_log_bin = @log_bin;
END//
DELIMITER ;

-- Dumping structure for procedure sys.ps_truncate_all_tables
DELIMITER //
CREATE PROCEDURE `ps_truncate_all_tables`(
        IN in_verbose BOOLEAN
    )
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Truncates all summary tables within Performance Schema,\n             resetting all aggregated instrumentation as a snapshot.\n             Parameters\n             in_verbose (BOOLEAN):\n               Whether to print each TRUNCATE statement before running\n             Example\n             mysql> CALL sys.ps_truncate_all_tables(false);\n             +---------------------+\n             | summary             |\n             +---------------------+\n             | Truncated 44 tables |\n             +---------------------+\n             1 row in set (0.10 sec)\n             Query OK, 0 rows affected (0.10 sec)\n            '
BEGIN
    DECLARE v_done INT DEFAULT FALSE;
    DECLARE v_total_tables INT DEFAULT 0;
    DECLARE v_ps_table VARCHAR(64);
    DECLARE ps_tables CURSOR FOR
        SELECT table_name
          FROM INFORMATION_SCHEMA.TABLES
         WHERE table_schema = 'performance_schema'
           AND (table_name LIKE '%summary%'
            OR table_name LIKE '%history%');
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    OPEN ps_tables;
    ps_tables_loop: LOOP
        FETCH ps_tables INTO v_ps_table;
        IF v_done THEN
          LEAVE ps_tables_loop;
        END IF;
        SET @truncate_stmt := CONCAT('TRUNCATE TABLE performance_schema.', v_ps_table);
        IF in_verbose THEN
            SELECT CONCAT('Running: ', @truncate_stmt) AS status;
        END IF;
        PREPARE truncate_stmt FROM @truncate_stmt;
        EXECUTE truncate_stmt;
        DEALLOCATE PREPARE truncate_stmt;
        SET v_total_tables = v_total_tables + 1;
    END LOOP;
    CLOSE ps_tables;
    SELECT CONCAT('Truncated ', v_total_tables, ' tables') AS summary;
END//
DELIMITER ;

-- Dumping structure for function sys.quote_identifier
DELIMITER //
CREATE FUNCTION `quote_identifier`(in_identifier TEXT) RETURNS text CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes an unquoted identifier (schema name, table name, etc.) and\n             returns the identifier quoted with backticks.\n             Parameters\n             in_identifier (TEXT):\n               The identifier to quote.\n             Returns\n             TEXT\n             Example\n             mysql> SELECT sys.quote_identifier(''my_identifier'') AS Identifier;\n             +-----------------+\n             | Identifier      |\n             +-----------------+\n             | `my_identifier` |\n             +-----------------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.quote_identifier(''my`idenfier'') AS Identifier;\n             +----------------+\n             | Identifier     |\n             +----------------+\n             | `my``idenfier` |\n             +----------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN CONCAT('`', REPLACE(in_identifier, '`', '``'), '`');
END//
DELIMITER ;

-- Dumping structure for view sys.schema_auto_increment_columns
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_auto_increment_columns` (
	`table_schema` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`column_name` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`data_type` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`column_type` LONGTEXT NOT NULL COLLATE 'utf8mb3_general_ci',
	`is_signed` INT(1) NOT NULL,
	`is_unsigned` INT(1) NOT NULL,
	`max_value` BIGINT(21) UNSIGNED NULL,
	`auto_increment` BIGINT(21) UNSIGNED NULL,
	`auto_increment_ratio` DECIMAL(25,4) UNSIGNED NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.schema_index_statistics
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_index_statistics` (
	`table_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`index_name` VARCHAR(64) NULL COMMENT 'Index name, or PRIMARY for the primary index, NULL for no index (inserts are counted in this case).' COLLATE 'utf8mb3_general_ci',
	`rows_selected` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all fetch operations.',
	`select_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all insert operations.',
	`insert_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all update operations.',
	`update_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all delete operations.',
	`delete_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.schema_object_overview
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_object_overview` (
	`db` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`object_type` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.schema_redundant_indexes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_redundant_indexes` (
	`table_schema` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`redundant_index_name` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`redundant_index_columns` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci',
	`redundant_index_non_unique` BIGINT(1) NULL,
	`dominant_index_name` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`dominant_index_columns` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci',
	`dominant_index_non_unique` BIGINT(1) NULL,
	`subpart_exists` INT(1) NULL,
	`sql_drop_index` VARCHAR(223) NOT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.schema_tables_with_full_table_scans
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_tables_with_full_table_scans` (
	`object_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`object_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`rows_full_scanned` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, and the sum of the equivalent x_FETCH columns.',
	`latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.schema_table_lock_waits
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_table_lock_waits` (
	`object_schema` VARCHAR(64) NULL COMMENT 'Object schema.' COLLATE 'utf8mb3_general_ci',
	`object_name` VARCHAR(64) NULL COMMENT 'Object name.' COLLATE 'utf8mb3_general_ci',
	`waiting_thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`waiting_pid` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
	`waiting_account` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`waiting_lock_type` VARCHAR(32) NOT NULL COMMENT 'Lock type. One of BACKUP_FTWRL1, BACKUP_START, BACKUP_TRANS_DML, EXCLUSIVE, INTENTION_EXCLUSIVE, SHARED, SHARED_HIGH_PRIO, SHARED_NO_READ_WRITE, SHARED_NO_WRITE, SHARED_READ, SHARED_UPGRADABLE or SHARED_WRITE.' COLLATE 'utf8mb3_general_ci',
	`waiting_lock_duration` VARCHAR(32) NOT NULL COMMENT 'Lock duration. One of EXPLICIT (locks released by explicit action, for example a global lock acquired with FLUSH TABLES WITH READ LOCK) , STATEMENT (locks implicitly released at statement end) or TRANSACTION (locks implicitly released at transaction end).' COLLATE 'utf8mb3_general_ci',
	`waiting_query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`waiting_query_secs` BIGINT(20) NULL COMMENT 'Time in seconds the thread has been in its current state.',
	`waiting_query_rows_affected` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows affected the statement affected.',
	`waiting_query_rows_examined` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows read during the statement\'s execution.',
	`blocking_thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`blocking_pid` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
	`blocking_account` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_lock_type` VARCHAR(32) NOT NULL COMMENT 'Lock type. One of BACKUP_FTWRL1, BACKUP_START, BACKUP_TRANS_DML, EXCLUSIVE, INTENTION_EXCLUSIVE, SHARED, SHARED_HIGH_PRIO, SHARED_NO_READ_WRITE, SHARED_NO_WRITE, SHARED_READ, SHARED_UPGRADABLE or SHARED_WRITE.' COLLATE 'utf8mb3_general_ci',
	`blocking_lock_duration` VARCHAR(32) NOT NULL COMMENT 'Lock duration. One of EXPLICIT (locks released by explicit action, for example a global lock acquired with FLUSH TABLES WITH READ LOCK) , STATEMENT (locks implicitly released at statement end) or TRANSACTION (locks implicitly released at transaction end).' COLLATE 'utf8mb3_general_ci',
	`sql_kill_blocking_query` VARCHAR(31) NULL COLLATE 'utf8mb3_general_ci',
	`sql_kill_blocking_connection` VARCHAR(25) NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.schema_table_statistics
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_table_statistics` (
	`table_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_fetched` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all fetch operations.',
	`fetch_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all insert operations.',
	`insert_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all update operations.',
	`update_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all delete operations.',
	`delete_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_read_requests` DECIMAL(42,0) NULL,
	`io_read` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_read_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_write_requests` DECIMAL(42,0) NULL,
	`io_write` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_write_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_misc_requests` DECIMAL(42,0) NULL,
	`io_misc_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.schema_table_statistics_with_buffer
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_table_statistics_with_buffer` (
	`table_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`rows_fetched` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all fetch operations.',
	`fetch_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all insert operations.',
	`insert_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all update operations.',
	`update_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all delete operations.',
	`delete_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_read_requests` DECIMAL(42,0) NULL,
	`io_read` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_read_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_write_requests` DECIMAL(42,0) NULL,
	`io_write` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_write_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`io_misc_requests` DECIMAL(42,0) NULL,
	`io_misc_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`innodb_buffer_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`innodb_buffer_data` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`innodb_buffer_free` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`innodb_buffer_pages` BIGINT(21) NULL,
	`innodb_buffer_pages_hashed` BIGINT(21) NULL,
	`innodb_buffer_pages_old` BIGINT(21) NULL,
	`innodb_buffer_rows_cached` DECIMAL(44,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.schema_unused_indexes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `schema_unused_indexes` (
	`object_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`object_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`index_name` VARCHAR(64) NULL COMMENT 'Index name, or PRIMARY for the primary index, NULL for no index (inserts are counted in this case).' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.session
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `session` (
	`thd_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`conn_id` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
	`user` VARCHAR(384) NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Thread\'s default database, or NULL if none exists.' COLLATE 'utf8mb3_general_ci',
	`command` VARCHAR(16) NULL COMMENT 'Type of command executed by the thread. These correspond to the the COM_xxx client/server protocol commands, and the Com_xxx status variables. See Thread Command Values.' COLLATE 'utf8mb3_general_ci',
	`state` VARCHAR(64) NULL COMMENT 'Action, event or state indicating what the thread is doing.' COLLATE 'utf8mb3_general_ci',
	`time` BIGINT(20) NULL COMMENT 'Time in seconds the thread has been in its current state.',
	`current_statement` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`statement_latency` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci',
	`progress` DECIMAL(26,2) NULL,
	`lock_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_examined` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows read during the statement\'s execution.',
	`rows_sent` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows returned.',
	`rows_affected` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows affected the statement affected.',
	`tmp_tables` BIGINT(20) UNSIGNED NULL COMMENT 'Number of temp tables created by the statement.',
	`tmp_disk_tables` BIGINT(20) UNSIGNED NULL COMMENT 'Number of on-disk temp tables created by the statement.',
	`full_scan` VARCHAR(3) NULL COLLATE 'utf8mb3_general_ci',
	`last_statement` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`last_statement_latency` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_memory` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`last_wait` VARCHAR(128) NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table' COLLATE 'utf8mb3_general_ci',
	`last_wait_latency` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci',
	`source` VARCHAR(64) NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.' COLLATE 'utf8mb3_general_ci',
	`trx_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`trx_state` ENUM('ACTIVE','COMMITTED','ROLLED BACK') NULL COMMENT 'The current transaction state. The value is ACTIVE (after START TRANSACTION or BEGIN), COMMITTED (after COMMIT), or ROLLED BACK (after ROLLBACK).' COLLATE 'utf8mb3_general_ci',
	`trx_autocommit` ENUM('YES','NO') NULL COMMENT 'Whether autcommit mode was enabled when the transaction started.' COLLATE 'utf8mb3_general_ci',
	`pid` VARCHAR(1024) NULL COMMENT 'Attribute value.' COLLATE 'utf8mb3_bin',
	`program_name` VARCHAR(1024) NULL COMMENT 'Attribute value.' COLLATE 'utf8mb3_bin'
) ENGINE=MyISAM;

-- Dumping structure for view sys.session_ssl_status
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `session_ssl_status` (
	`thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'The thread identifier of the session in which the status variable is defined.',
	`ssl_version` VARCHAR(1024) NULL COMMENT 'Aggregated status variable value.' COLLATE 'utf8mb3_general_ci',
	`ssl_cipher` VARCHAR(1024) NULL COMMENT 'Aggregated status variable value.' COLLATE 'utf8mb3_general_ci',
	`ssl_sessions_reused` VARCHAR(1024) NULL COMMENT 'Aggregated status variable value.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.statements_with_errors_or_warnings
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `statements_with_errors_or_warnings` (
	`query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`errors` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
	`error_pct` DECIMAL(27,4) NOT NULL,
	`warnings` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
	`warning_pct` DECIMAL(27,4) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.statements_with_full_table_scans
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `statements_with_full_table_scans` (
	`query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`no_index_used_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
	`no_good_index_used_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.',
	`no_index_used_pct` DECIMAL(24,0) NOT NULL,
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_sent_avg` DECIMAL(21,0) UNSIGNED NULL,
	`rows_examined_avg` DECIMAL(21,0) UNSIGNED NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.statements_with_runtimes_in_95th_percentile
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `statements_with_runtimes_in_95th_percentile` (
	`query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`full_scan` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`err_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
	`warn_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_sent_avg` DECIMAL(21,0) NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_examined_avg` DECIMAL(21,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.statements_with_sorting
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `statements_with_sorting` (
	`query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`sort_merge_passes` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
	`avg_sort_merges` DECIMAL(21,0) NOT NULL,
	`sorts_using_scans` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
	`sort_using_range` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
	`rows_sorted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
	`avg_rows_sorted` DECIMAL(21,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.statements_with_temp_tables
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `statements_with_temp_tables` (
	`query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`memory_tmp_tables` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
	`disk_tmp_tables` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
	`avg_tmp_tables_per_query` DECIMAL(21,0) NOT NULL,
	`tmp_tables_to_disk_pct` DECIMAL(24,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.statement_analysis
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `statement_analysis` (
	`query` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`full_scan` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`err_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
	`warn_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`lock_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_sent_avg` DECIMAL(21,0) NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_examined_avg` DECIMAL(21,0) NOT NULL,
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
	`rows_affected_avg` DECIMAL(21,0) NOT NULL,
	`tmp_tables` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
	`tmp_disk_tables` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
	`rows_sorted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
	`sort_merge_passes` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci',
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.'
) ENGINE=MyISAM;

-- Dumping structure for procedure sys.statement_performance_analyzer
DELIMITER //
CREATE PROCEDURE `statement_performance_analyzer`(
        IN in_action ENUM('snapshot', 'overall', 'delta', 'create_table', 'create_tmp', 'save', 'cleanup'),
        IN in_table VARCHAR(129),
        IN in_views SET ('with_runtimes_in_95th_percentile', 'analysis', 'with_errors_or_warnings', 'with_full_table_scans', 'with_sorting', 'with_temp_tables', 'custom')
    )
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Create a report of the statements running on the server.\n             The views are calculated based on the overall and/or delta activity.\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             in_action (ENUM(''snapshot'', ''overall'', ''delta'', ''create_tmp'', ''create_table'', ''save'', ''cleanup'')):\n               The action to take. Supported actions are:\n                 * snapshot      Store a snapshot. The default is to make a snapshot of the current content of\n                                 performance_schema.events_statements_summary_by_digest, but by setting in_table\n                                 this can be overwritten to copy the content of the specified table.\n                                 The snapshot is stored in the sys.tmp_digests temporary table.\n                 * overall       Generate analyzis based on the content specified by in_table. For the overall analyzis,\n                                 in_table can be NOW() to use a fresh snapshot. This will overwrite an existing snapshot.\n                                 Use NULL for in_table to use the existing snapshot. If in_table IS NULL and no snapshot\n                                 exists, a new will be created.\n                                 See also in_views and @sys.statement_performance_analyzer.limit.\n                 * delta         Generate a delta analysis. The delta will be calculated between the reference table in\n                                 in_table and the snapshot. An existing snapshot must exist.\n                                 The action uses the sys.tmp_digests_delta temporary table.\n                                 See also in_views and @sys.statement_performance_analyzer.limit.\n                 * create_table  Create a regular table suitable for storing the snapshot for later use, e.g. for\n                                 calculating deltas.\n                 * create_tmp    Create a temporary table suitable for storing the snapshot for later use, e.g. for\n                                 calculating deltas.\n                 * save          Save the snapshot in the table specified by in_table. The table must exists and have\n                                 the correct structure.\n                                 If no snapshot exists, a new is created.\n                 * cleanup       Remove the temporary tables used for the snapshot and delta.\n             in_table (VARCHAR(129)):\n               The table argument used for some actions. Use the format ''db1.t1'' or ''t1'' without using any backticks (`)\n               for quoting. Periods (.) are not supported in the database and table names.\n               The meaning of the table for each action supporting the argument is:\n                 * snapshot      The snapshot is created based on the specified table. Set to NULL or NOW() to use\n                                 the current content of performance_schema.events_statements_summary_by_digest.\n                 * overall       The table with the content to create the overall analyzis for. The following values\n                                 can be used:\n                                   - A table name - use the content of that table.\n                                   - NOW()        - create a fresh snapshot and overwrite the existing snapshot.\n                                   - NULL         - use the last stored snapshot.\n                 * delta         The table name is mandatory and specified the reference view to compare the currently\n                                 stored snapshot against. If no snapshot exists, a new will be created.\n                 * create_table  The name of the regular table to create.\n                 * create_tmp    The name of the temporary table to create.\n                 * save          The name of the table to save the currently stored snapshot into.\n             in_views (SET (''with_runtimes_in_95th_percentile'', ''analysis'', ''with_errors_or_warnings'',\n                            ''with_full_table_scans'', ''with_sorting'', ''with_temp_tables'', ''custom''))\n               Which views to include:\n                 * with_runtimes_in_95th_percentile  Based on the sys.statements_with_runtimes_in_95th_percentile view\n                 * analysis                          Based on the sys.statement_analysis view\n                 * with_errors_or_warnings           Based on the sys.statements_with_errors_or_warnings view\n                 * with_full_table_scans             Based on the sys.statements_with_full_table_scans view\n                 * with_sorting                      Based on the sys.statements_with_sorting view\n                 * with_temp_tables                  Based on the sys.statements_with_temp_tables view\n                 * custom                            Use a custom view. This view must be specified in @sys.statement_performance_analyzer.view to an existing view or a query\n             Default is to include all except ''custom''.\n             Configuration Options\n             sys.statement_performance_analyzer.limit\n               The maximum number of rows to include for the views that does not have a built-in limit (e.g. the 95th percentile view).\n               If not set the limit is 100.\n             sys.statement_performance_analyzer.view\n               Used together with the ''custom'' view. If the value contains a space, it is considered a query, otherwise it must be\n               an existing view querying the performance_schema.events_statements_summary_by_digest table. There cannot be any limit\n               clause including in the query or view definition if @sys.statement_performance_analyzer.limit > 0.\n               If specifying a view, use the same format as for in_table.\n             sys.debug\n               Whether to provide debugging output.\n               Default is ''OFF''. Set to ''ON'' to include.\n             Example\n             To create a report with the queries in the 95th percentile since last truncate of performance_schema.events_statements_summary_by_digest\n             and the delta for a 1 minute period:\n                1. Create a temporary table to store the initial snapshot.\n                2. Create the initial snapshot.\n                3. Save the initial snapshot in the temporary table.\n                4. Wait one minute.\n                5. Create a new snapshot.\n                6. Perform analyzis based on the new snapshot.\n                7. Perform analyzis based on the delta between the initial and new snapshots.\n             mysql> CALL sys.statement_performance_analyzer(''create_tmp'', ''mydb.tmp_digests_ini'', NULL);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\n             Query OK, 0 rows affected (0.02 sec)\n             mysql> CALL sys.statement_performance_analyzer(''save'', ''mydb.tmp_digests_ini'', NULL);\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> DO SLEEP(60);\n             Query OK, 0 rows affected (1 min 0.00 sec)\n             mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\n             Query OK, 0 rows affected (0.02 sec)\n             mysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile'');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.05 sec)\n             ...\n             mysql> CALL sys.statement_performance_analyzer(''delta'', ''mydb.tmp_digests_ini'', ''with_runtimes_in_95th_percentile'');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.03 sec)\n             ...\n             To create an overall report of the 95th percentile queries and the top 10 queries with full table scans:\n             mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\n             Query OK, 0 rows affected (0.01 sec)\n             mysql> SET @sys.statement_performance_analyzer.limit = 10;\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile,with_full_table_scans'');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.01 sec)\n             ...\n             +-------------------------------------+\n             | Next Output                         |\n             +-------------------------------------+\n             | Top 10 Queries with Full Table Scan |\n             +-------------------------------------+\n             1 row in set (0.09 sec)\n             ...\n             Use a custom view showing the top 10 query sorted by total execution time refreshing the view every minute using\n             the watch command in Linux.\n             mysql> CREATE OR REPLACE VIEW mydb.my_statements AS\n                 -> SELECT sys.format_statement(DIGEST_TEXT) AS query,\n                 ->        SCHEMA_NAME AS db,\n                 ->        COUNT_STAR AS exec_count,\n                 ->        sys.format_time(SUM_TIMER_WAIT) AS total_latency,\n                 ->        sys.format_time(AVG_TIMER_WAIT) AS avg_latency,\n                 ->        ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg,\n                 ->        ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg,\n                 ->        ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0)) AS rows_affected_avg,\n                 ->        DIGEST AS digest\n                 ->   FROM performance_schema.events_statements_summary_by_digest\n                 -> ORDER BY SUM_TIMER_WAIT DESC;\n             Query OK, 0 rows affected (0.01 sec)\n             mysql> CALL sys.statement_performance_analyzer(''create_table'', ''mydb.digests_prev'', NULL);\n             Query OK, 0 rows affected (0.10 sec)\n             shell$ watch -n 60 "mysql sys --table -e "\n             > SET @sys.statement_performance_analyzer.view = ''mydb.my_statements'';\n             > SET @sys.statement_performance_analyzer.limit = 10;\n             > CALL statement_performance_analyzer(''snapshot'', NULL, NULL);\n             > CALL statement_performance_analyzer(''delta'', ''mydb.digests_prev'', ''custom'');\n             > CALL statement_performance_analyzer(''save'', ''mydb.digests_prev'', NULL);\n             > ""\n             Every 60.0s: mysql sys --table -e "                                                                                                   ...  Mon Dec 22 10:58:51 2014\n             +----------------------------------+\n             | Next Output                      |\n             +----------------------------------+\n             | Top 10 Queries Using Custom View |\n             +----------------------------------+\n             +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n             | query             | db    | exec_count | total_latency | avg_latency | rows_sent_avg | rows_examined_avg | rows_affected_avg | digest                           |\n             +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n             ...\n            '
BEGIN
    DECLARE v_table_exists, v_tmp_digests_table_exists, v_custom_view_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') DEFAULT '';
    DECLARE v_this_thread_enabled ENUM('YES', 'NO');
    DECLARE v_force_new_snapshot BOOLEAN DEFAULT FALSE;
    DECLARE v_digests_table VARCHAR(133);
    DECLARE v_quoted_table, v_quoted_custom_view VARCHAR(133) DEFAULT '';
    DECLARE v_table_db, v_table_name, v_custom_db, v_custom_name VARCHAR(64);
    DECLARE v_digest_table_template, v_checksum_ref, v_checksum_table text;
    DECLARE v_sql longtext;
    DECLARE v_error_msg VARCHAR(128);
    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    END IF;
    SET @log_bin := @@sql_log_bin;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = 0;
    END IF;
    IF (@sys.statement_performance_analyzer.limit IS NULL) THEN
        SET @sys.statement_performance_analyzer.limit = sys.sys_get_config('statement_performance_analyzer.limit', '100');
    END IF;
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug                                = sys.sys_get_config('debug'                               , 'OFF');
    END IF;
    IF (in_table = 'NOW()') THEN
        SET v_force_new_snapshot = TRUE,
            in_table             = NULL;
    ELSEIF (in_table IS NOT NULL) THEN
        IF (NOT INSTR(in_table, '.')) THEN
            SET v_table_db   = DATABASE(),
                v_table_name = in_table;
        ELSE
            SET v_table_db   = SUBSTRING_INDEX(in_table, '.', 1);
            SET v_table_name = SUBSTRING(in_table, CHAR_LENGTH(v_table_db)+2);
        END IF;
        SET v_quoted_table = CONCAT('`', v_table_db, '`.`', v_table_name, '`');
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('in_table is: db = ''', v_table_db, ''', table = ''', v_table_name, '''') AS 'Debug';
        END IF;
        IF (v_table_db = DATABASE() AND (v_table_name = 'tmp_digests' OR v_table_name = 'tmp_digests_delta')) THEN
            SET v_error_msg = CONCAT('Invalid value for in_table: ', v_quoted_table, ' is reserved table name.');
            SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = v_error_msg;
        END IF;
        CALL sys.table_exists(v_table_db, v_table_name, v_table_exists);
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('v_table_exists = ', v_table_exists) AS 'Debug';
        END IF;
        IF (v_table_exists = 'BASE TABLE') THEN
            SET v_checksum_ref = (
                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum
                   FROM information_schema.COLUMNS
                  WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'events_statements_summary_by_digest'
                ),
                v_checksum_table = (
                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum
                   FROM information_schema.COLUMNS
                  WHERE TABLE_SCHEMA = v_table_db AND TABLE_NAME = v_table_name
                );
            IF (v_checksum_ref <> v_checksum_table) THEN
                SET v_error_msg = CONCAT('The table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 93, CONCAT('...', SUBSTRING(v_quoted_table, -90)), v_quoted_table),
                                         ' has the wrong definition.');
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        END IF;
    END IF;
    IF (in_views IS NULL OR in_views = '') THEN
        SET in_views = 'with_runtimes_in_95th_percentile,analysis,with_errors_or_warnings,with_full_table_scans,with_sorting,with_temp_tables';
    END IF;
    CALL sys.table_exists(DATABASE(), 'tmp_digests', v_tmp_digests_table_exists);
    IF (@sys.debug = 'ON') THEN
        SELECT CONCAT('v_tmp_digests_table_exists = ', v_tmp_digests_table_exists) AS 'Debug';
    END IF;
    CASE
        WHEN in_action IN ('snapshot', 'overall') THEN
            IF (in_table IS NOT NULL) THEN
                IF (NOT v_table_exists IN ('TEMPORARY', 'BASE TABLE')) THEN
                    SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be NULL, NOW() or specify an existing table.',
                                             ' The table ',
                                             IF(CHAR_LENGTH(v_quoted_table) > 16, CONCAT('...', SUBSTRING(v_quoted_table, -13)), v_quoted_table),
                                             ' does not exist.');
                    SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = v_error_msg;
                END IF;
            END IF;
        WHEN in_action IN ('delta', 'save') THEN
            IF (v_table_exists NOT IN ('TEMPORARY', 'BASE TABLE')) THEN
                SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be an existing table.',
                                         IF(in_table IS NOT NULL, CONCAT(' The table ',
                                             IF(CHAR_LENGTH(v_quoted_table) > 39, CONCAT('...', SUBSTRING(v_quoted_table, -36)), v_quoted_table),
                                             ' does not exist.'), ''));
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
            IF (in_action = 'delta' AND v_tmp_digests_table_exists <> 'TEMPORARY') THEN
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = 'An existing snapshot generated with the statement_performance_analyzer() must exist.';
            END IF;
        WHEN in_action = 'create_tmp' THEN
            IF (v_table_exists = 'TEMPORARY') THEN
                SET v_error_msg = CONCAT('Cannot create the table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 72, CONCAT('...', SUBSTRING(v_quoted_table, -69)), v_quoted_table),
                                         ' as it already exists.');
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        WHEN in_action = 'create_table' THEN
            IF (v_table_exists <> '') THEN
                SET v_error_msg = CONCAT('Cannot create the table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 52, CONCAT('...', SUBSTRING(v_quoted_table, -49)), v_quoted_table),
                                         ' as it already exists',
                                         IF(v_table_exists = 'TEMPORARY', ' as a temporary table.', '.'));
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        WHEN in_action = 'cleanup' THEN
            DO (SELECT 1);
        ELSE
            SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = 'Unknown action. Supported actions are: cleanup, create_table, create_tmp, delta, overall, save, snapshot';
    END CASE;
    SET v_digest_table_template = 'CREATE %{TEMPORARY}TABLE %{TABLE_NAME} (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `FIRST_SEEN` timestamp NULL DEFAULT NULL,
  `LAST_SEEN` timestamp NULL DEFAULT NULL,
  INDEX (SCHEMA_NAME, DIGEST)
) DEFAULT CHARSET=utf8';
    IF (v_force_new_snapshot
           OR in_action = 'snapshot'
           OR (in_action = 'overall' AND in_table IS NULL)
           OR (in_action = 'save' AND v_tmp_digests_table_exists <> 'TEMPORARY')
       ) THEN
        IF (v_tmp_digests_table_exists = 'TEMPORARY') THEN
            IF (@sys.debug = 'ON') THEN
                SELECT 'DROP TEMPORARY TABLE IF EXISTS tmp_digests' AS 'Debug';
            END IF;
            DROP TEMPORARY TABLE IF EXISTS tmp_digests;
        END IF;
        CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', 'tmp_digests'));
        SET v_sql = CONCAT('INSERT INTO tmp_digests SELECT * FROM ',
                           IF(in_table IS NULL OR in_action = 'save', 'performance_schema.events_statements_summary_by_digest', v_quoted_table));
        CALL sys.execute_prepared_stmt(v_sql);
    END IF;
    IF (in_action IN ('create_table', 'create_tmp')) THEN
        IF (in_action = 'create_table') THEN
            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', ''), '%{TABLE_NAME}', v_quoted_table));
        ELSE
            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', v_quoted_table));
        END IF;
    ELSEIF (in_action = 'save') THEN
        CALL sys.execute_prepared_stmt(CONCAT('DELETE FROM ', v_quoted_table));
        CALL sys.execute_prepared_stmt(CONCAT('INSERT INTO ', v_quoted_table, ' SELECT * FROM tmp_digests'));
    ELSEIF (in_action = 'cleanup') THEN
        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests;
        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests_delta;
    ELSEIF (in_action IN ('overall', 'delta')) THEN
        IF (in_action = 'overall') THEN
            IF (in_table IS NULL) THEN
                SET v_digests_table = 'tmp_digests';
            ELSE
                SET v_digests_table = v_quoted_table;
            END IF;
        ELSE
            SET v_digests_table = 'tmp_digests_delta';
            DROP TEMPORARY TABLE IF EXISTS tmp_digests_delta;
            CREATE TEMPORARY TABLE tmp_digests_delta LIKE tmp_digests;
            SET v_sql = CONCAT('INSERT INTO tmp_digests_delta
SELECT `d_end`.`SCHEMA_NAME`,
       `d_end`.`DIGEST`,
       `d_end`.`DIGEST_TEXT`,
       `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) AS ''COUNT_STAR'',
       `d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0) AS ''SUM_TIMER_WAIT'',
       `d_end`.`MIN_TIMER_WAIT` AS ''MIN_TIMER_WAIT'',
       IFNULL((`d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0))/NULLIF(`d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0), 0), 0) AS ''AVG_TIMER_WAIT'',
       `d_end`.`MAX_TIMER_WAIT` AS ''MAX_TIMER_WAIT'',
       `d_end`.`SUM_LOCK_TIME`-IFNULL(`d_start`.`SUM_LOCK_TIME`, 0) AS ''SUM_LOCK_TIME'',
       `d_end`.`SUM_ERRORS`-IFNULL(`d_start`.`SUM_ERRORS`, 0) AS ''SUM_ERRORS'',
       `d_end`.`SUM_WARNINGS`-IFNULL(`d_start`.`SUM_WARNINGS`, 0) AS ''SUM_WARNINGS'',
       `d_end`.`SUM_ROWS_AFFECTED`-IFNULL(`d_start`.`SUM_ROWS_AFFECTED`, 0) AS ''SUM_ROWS_AFFECTED'',
       `d_end`.`SUM_ROWS_SENT`-IFNULL(`d_start`.`SUM_ROWS_SENT`, 0) AS ''SUM_ROWS_SENT'',
       `d_end`.`SUM_ROWS_EXAMINED`-IFNULL(`d_start`.`SUM_ROWS_EXAMINED`, 0) AS ''SUM_ROWS_EXAMINED'',
       `d_end`.`SUM_CREATED_TMP_DISK_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_DISK_TABLES`, 0) AS ''SUM_CREATED_TMP_DISK_TABLES'',
       `d_end`.`SUM_CREATED_TMP_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_TABLES`, 0) AS ''SUM_CREATED_TMP_TABLES'',
       `d_end`.`SUM_SELECT_FULL_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_JOIN`, 0) AS ''SUM_SELECT_FULL_JOIN'',
       `d_end`.`SUM_SELECT_FULL_RANGE_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_RANGE_JOIN`, 0) AS ''SUM_SELECT_FULL_RANGE_JOIN'',
       `d_end`.`SUM_SELECT_RANGE`-IFNULL(`d_start`.`SUM_SELECT_RANGE`, 0) AS ''SUM_SELECT_RANGE'',
       `d_end`.`SUM_SELECT_RANGE_CHECK`-IFNULL(`d_start`.`SUM_SELECT_RANGE_CHECK`, 0) AS ''SUM_SELECT_RANGE_CHECK'',
       `d_end`.`SUM_SELECT_SCAN`-IFNULL(`d_start`.`SUM_SELECT_SCAN`, 0) AS ''SUM_SELECT_SCAN'',
       `d_end`.`SUM_SORT_MERGE_PASSES`-IFNULL(`d_start`.`SUM_SORT_MERGE_PASSES`, 0) AS ''SUM_SORT_MERGE_PASSES'',
       `d_end`.`SUM_SORT_RANGE`-IFNULL(`d_start`.`SUM_SORT_RANGE`, 0) AS ''SUM_SORT_RANGE'',
       `d_end`.`SUM_SORT_ROWS`-IFNULL(`d_start`.`SUM_SORT_ROWS`, 0) AS ''SUM_SORT_ROWS'',
       `d_end`.`SUM_SORT_SCAN`-IFNULL(`d_start`.`SUM_SORT_SCAN`, 0) AS ''SUM_SORT_SCAN'',
       `d_end`.`SUM_NO_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_INDEX_USED`, 0) AS ''SUM_NO_INDEX_USED'',
       `d_end`.`SUM_NO_GOOD_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_GOOD_INDEX_USED`, 0) AS ''SUM_NO_GOOD_INDEX_USED'',
       `d_end`.`FIRST_SEEN`,
       `d_end`.`LAST_SEEN`
  FROM tmp_digests d_end
       LEFT OUTER JOIN ', v_quoted_table, ' d_start ON `d_start`.`DIGEST` = `d_end`.`DIGEST`
                                                    AND (`d_start`.`SCHEMA_NAME` = `d_end`.`SCHEMA_NAME`
                                                          OR (`d_start`.`SCHEMA_NAME` IS NULL AND `d_end`.`SCHEMA_NAME` IS NULL)
                                                        )
 WHERE `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) > 0');
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_runtimes_in_95th_percentile', in_views)) THEN
            SELECT 'Queries with Runtime in 95th Percentile' AS 'Next Output';
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution1;
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution2;
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_95th_percentile_by_avg_us;
            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution1 (
              cnt bigint unsigned NOT NULL,
              avg_us decimal(21,0) NOT NULL,
              PRIMARY KEY (avg_us)
            ) ENGINE=InnoDB;
            SET v_sql = CONCAT('INSERT INTO tmp_digest_avg_latency_distribution1
SELECT COUNT(*) cnt,
       ROUND(avg_timer_wait/1000000) AS avg_us
  FROM ', v_digests_table, '
 GROUP BY avg_us');
            CALL sys.execute_prepared_stmt(v_sql);
            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution2 LIKE tmp_digest_avg_latency_distribution1;
            INSERT INTO tmp_digest_avg_latency_distribution2 SELECT * FROM tmp_digest_avg_latency_distribution1;
            CREATE TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us (
              avg_us decimal(21,0) NOT NULL,
              percentile decimal(46,4) NOT NULL,
              PRIMARY KEY (avg_us)
            ) ENGINE=InnoDB;
            SET v_sql = CONCAT('INSERT INTO tmp_digest_95th_percentile_by_avg_us
SELECT s2.avg_us avg_us,
       IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM ', v_digests_table, '), 0), 0) percentile
  FROM tmp_digest_avg_latency_distribution1 AS s1
       JOIN tmp_digest_avg_latency_distribution2 AS s2 ON s1.avg_us <= s2.avg_us
 GROUP BY s2.avg_us
HAVING percentile > 0.95
 ORDER BY percentile
 LIMIT 1');
            CALL sys.execute_prepared_stmt(v_sql);
            SET v_sql =
                REPLACE(
                    REPLACE(
                        (SELECT VIEW_DEFINITION
                           FROM information_schema.VIEWS
                          WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_runtimes_in_95th_percentile'
                        ),
                        '`performance_schema`.`events_statements_summary_by_digest`',
                        v_digests_table
                    ),
                    'sys.x$ps_digest_95th_percentile_by_avg_us',
                    '`sys`.`x$ps_digest_95th_percentile_by_avg_us`'
              );
            CALL sys.execute_prepared_stmt(v_sql);
            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution1;
            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution2;
            DROP TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us;
        END IF;
        IF (FIND_IN_SET('analysis', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Ordered by Total Latency') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statement_analysis'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_errors_or_warnings', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Errors') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_errors_or_warnings'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_full_table_scans', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Full Table Scan') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_full_table_scans'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_sorting', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Sorting') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_sorting'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_temp_tables', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Internal Temporary Tables') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_temp_tables'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('custom', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Using Custom View') AS 'Next Output';
            IF (@sys.statement_performance_analyzer.view IS NULL) THEN
                SET @sys.statement_performance_analyzer.view = sys.sys_get_config('statement_performance_analyzer.view', NULL);
            END IF;
            IF (@sys.statement_performance_analyzer.view IS NULL) THEN
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable must be set with the view or query to use.';
            END IF;
            IF (NOT INSTR(@sys.statement_performance_analyzer.view, ' ')) THEN
                IF (NOT INSTR(@sys.statement_performance_analyzer.view, '.')) THEN
                    SET v_custom_db   = DATABASE(),
                        v_custom_name = @sys.statement_performance_analyzer.view;
                ELSE
                    SET v_custom_db   = SUBSTRING_INDEX(@sys.statement_performance_analyzer.view, '.', 1);
                    SET v_custom_name = SUBSTRING(@sys.statement_performance_analyzer.view, CHAR_LENGTH(v_custom_db)+2);
                END IF;
                CALL sys.table_exists(v_custom_db, v_custom_name, v_custom_view_exists);
                IF (v_custom_view_exists <> 'VIEW') THEN
                    SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable is set but specified neither an existing view nor a query.';
                END IF;
                SET v_sql =
                    REPLACE(
                        (SELECT VIEW_DEFINITION
                           FROM information_schema.VIEWS
                          WHERE TABLE_SCHEMA = v_custom_db AND TABLE_NAME = v_custom_name
                        ),
                        '`performance_schema`.`events_statements_summary_by_digest`',
                        v_digests_table
                    );
            ELSE
                SET v_sql = REPLACE(@sys.statement_performance_analyzer.view, '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table);
            END IF;
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
    END IF;
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = @log_bin;
    END IF;
END//
DELIMITER ;

-- Dumping structure for table sys.sys_config
CREATE TABLE IF NOT EXISTS `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci PAGE_CHECKSUM=1;

-- Data exporting was unselected.

-- Dumping structure for function sys.sys_get_config
DELIMITER //
CREATE FUNCTION `sys_get_config`(in_variable_name VARCHAR(128),
        in_default_value VARCHAR(128)
    ) RETURNS varchar(128) CHARSET utf8mb3 COLLATE utf8mb3_general_ci
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns the value for the requested variable using the following logic:\n                1. If the option exists in sys.sys_config return the value from there.\n                2. Else fall back on the provided default value.\n             Notes for using sys_get_config():\n                * If the default value argument to sys_get_config() is NULL and case 2. is reached, NULL is returned.\n                  It is then expected that the caller is able to handle NULL for the given configuration option.\n                * The convention is to name the user variables @sys.<name of variable>. It is <name of variable> that\n                  is stored in the sys_config table and is what is expected as the argument to sys_get_config().\n                * If you want to check whether the configuration option has already been set and if not assign with\n                  the return value of sys_get_config() you can use IFNULL(...) (see example below). However this should\n                  not be done inside a loop (e.g. for each row in a result set) as for repeated calls where assignment\n                  is only needed in the first iteration using IFNULL(...) is expected to be significantly slower than\n                  using an IF (...) THEN ... END IF; block (see example below).\n             Parameters\n             in_variable_name (VARCHAR(128)):\n               The name of the config option to return the value for.\n             in_default_value (VARCHAR(128)):\n               The default value to return if the variable does not exist in sys.sys_config.\n             Returns\n             VARCHAR(128)\n             Example\n             mysql> SELECT sys.sys_get_config(''statement_truncate_len'', 128) AS Value;\n             +-------+\n             | Value |\n             +-------+\n             | 64    |\n             +-------+\n             1 row in set (0.00 sec)\n             mysql> SET @sys.statement_truncate_len = IFNULL(@sys.statement_truncate_len, sys.sys_get_config(''statement_truncate_len'', 64));\n             Query OK, 0 rows affected (0.00 sec)\n             IF (@sys.statement_truncate_len IS NULL) THEN\n                 SET @sys.statement_truncate_len = sys.sys_get_config(''statement_truncate_len'', 64);\n             END IF;\n            '
BEGIN
    DECLARE v_value VARCHAR(128) DEFAULT NULL;
    DECLARE old_val INTEGER DEFAULT NULL;
    SET v_value = (SELECT value FROM sys.sys_config WHERE variable = in_variable_name);
    IF (v_value IS NULL) THEN
        SET v_value = in_default_value;
    END IF;
    RETURN v_value;
END//
DELIMITER ;

-- Dumping structure for procedure sys.table_exists
DELIMITER //
CREATE PROCEDURE `table_exists`(
        IN in_db VARCHAR(64), IN in_table VARCHAR(64),
        OUT out_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY', 'SEQUENCE', 'SYSTEM VIEW')
    )
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Tests whether the table specified in in_db and in_table exists either as a regular\n             table, or as a temporary table. The returned value corresponds to the table that\n             will be used, so if there''s both a temporary and a permanent table with the given\n             name, then ''TEMPORARY'' will be returned.\n             Parameters\n             in_db (VARCHAR(64)):\n               The database name to check for the existence of the table in.\n             in_table (VARCHAR(64)):\n               The name of the table to check the existence of.\n             out_exists ENUM('''', ''BASE TABLE'', ''VIEW'', ''TEMPORARY''):\n               The return value: whether the table exists. The value is one of:\n                 * ''''             - the table does not exist neither as a base table, view, sequence nor temporary table.\n                 * ''BASE TABLE''   - the table name exists as a permanent base table table.\n                 * ''VIEW''         - the table name exists as a view.\n                 * ''TEMPORARY''    - the table name exists as a temporary table.\n                 * ''SEQUENCE''     - the table name exists as a sequence.\n                 * ''SYSTEM VIEW''  - the table name exists as a system view.\n             Example\n             mysql> CREATE DATABASE db1;\n             Query OK, 1 row affected (0.07 sec)\n             mysql> use db1;\n             Database changed\n             mysql> CREATE TABLE t1 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CREATE TABLE t2 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CREATE view v_t1 AS SELECT * FROM t1;\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CREATE TEMPORARY TABLE t1 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CALL sys.table_exists(''db1'', ''t1'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +------------+\n             | @exists    |\n             +------------+\n             | TEMPORARY  |\n             +------------+\n             1 row in set (0.00 sec)\n             mysql> CALL sys.table_exists(''db1'', ''t2'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +------------+\n             | @exists    |\n             +------------+\n             | BASE TABLE |\n             +------------+\n             1 row in set (0.01 sec)\n             mysql> CALL sys.table_exists(''db1'', ''v_t1'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +---------+\n             | @exists |\n             +---------+\n             | VIEW    |\n             +---------+\n             1 row in set (0.00 sec)\n             MariaDB [sys]> CALL sys.table_exists(''db1'', ''s'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.006 sec)\n             +----------+\n             | @exists  |\n             +----------+\n             | SEQUENCE |\n             +----------+\n             1 row in set (0.000 sec)\n             MariaDB [sys]> CALL table_exists(''information_schema'', ''user_variables'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.003 sec)\n             +-------------+\n             | @exists     |\n             +-------------+\n             | SYSTEM VIEW |\n             +-------------+\n             1 row in set (0.001 sec)\n             mysql> CALL sys.table_exists(''db1'', ''t3'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.01 sec)\n             +---------+\n             | @exists |\n             +---------+\n             |         |\n             +---------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    DECLARE v_error BOOLEAN DEFAULT FALSE;
    DECLARE db_quoted VARCHAR(64);
    DECLARE table_quoted VARCHAR(64);
    DECLARE v_table_type VARCHAR(16) DEFAULT '';
    DECLARE v_system_db BOOLEAN
        DEFAULT LOWER(in_db) IN ('information_schema', 'performance_schema');
    DECLARE CONTINUE HANDLER FOR 1050 SET v_error = TRUE;
    DECLARE CONTINUE HANDLER FOR 1146 SET v_error = TRUE;
    SET out_exists = '';
    SET db_quoted = sys.quote_identifier(in_db);
    SET table_quoted = sys.quote_identifier(in_table);
    IF (EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table)) THEN
        IF v_system_db = FALSE THEN
            SET @sys.tmp.table_exists.SQL = CONCAT('CREATE TEMPORARY TABLE ',
                                                    db_quoted,
                                                    '.',
                                                    table_quoted,
                                                    '(id INT PRIMARY KEY)');
            PREPARE stmt_create_table FROM @sys.tmp.table_exists.SQL;
            EXECUTE stmt_create_table;
            DEALLOCATE PREPARE stmt_create_table;
            SET @sys.tmp.table_exists.SQL = CONCAT('DROP TEMPORARY TABLE ',
                                                                db_quoted,
                                                                '.',
                                                                table_quoted);
            PREPARE stmt_drop_table FROM @sys.tmp.table_exists.SQL;
            EXECUTE stmt_drop_table;
            DEALLOCATE PREPARE stmt_drop_table;
        END IF;
        IF (v_error) THEN
            SET out_exists = 'TEMPORARY';
        ELSE
            SET v_table_type = (SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table);
            IF v_table_type = 'SYSTEM VERSIONED' THEN
                SET out_exists = 'BASE TABLE';
            ELSE
                SET out_exists = v_table_type;
            END IF;
        END IF;
    ELSE
        IF v_system_db = FALSE THEN
            SET @sys.tmp.table_exists.SQL = CONCAT('SELECT COUNT(*) FROM ',
                                                            db_quoted,
                                                            '.',
                                                            table_quoted);
            PREPARE stmt_select FROM @sys.tmp.table_exists.SQL;
            IF (NOT v_error) THEN
                DEALLOCATE PREPARE stmt_select;
                SET out_exists = 'TEMPORARY';
            END IF;
        END IF;
    END IF;
END//
DELIMITER ;

-- Dumping structure for view sys.user_summary
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user_summary` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`statements` DECIMAL(64,0) NULL,
	`statement_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`statement_avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`table_scans` DECIMAL(65,0) NULL,
	`file_ios` DECIMAL(64,0) NULL,
	`file_io_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`current_connections` DECIMAL(41,0) NULL,
	`total_connections` DECIMAL(41,0) NULL,
	`unique_hosts` BIGINT(21) NOT NULL,
	`current_memory` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`total_memory_allocated` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.user_summary_by_file_io
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user_summary_by_file_io` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`ios` DECIMAL(42,0) NULL,
	`io_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.user_summary_by_file_io_type
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user_summary_by_file_io_type` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.user_summary_by_stages
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user_summary_by_stages` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.user_summary_by_statement_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user_summary_by_statement_latency` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`lock_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_sent` DECIMAL(42,0) NULL,
	`rows_examined` DECIMAL(42,0) NULL,
	`rows_affected` DECIMAL(42,0) NULL,
	`full_scans` DECIMAL(43,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.user_summary_by_statement_type
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user_summary_by_statement_type` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`statement` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`lock_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
	`full_scans` BIGINT(21) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.version
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `version` (
	`sys_version` VARCHAR(5) NOT NULL COLLATE 'utf8mb3_general_ci',
	`mysql_version` VARCHAR(15) NOT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for function sys.version_major
DELIMITER //
CREATE FUNCTION `version_major`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns the major version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.version_major();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_major() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 5                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 1);
END//
DELIMITER ;

-- Dumping structure for function sys.version_minor
DELIMITER //
CREATE FUNCTION `version_minor`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns the minor (release series) version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.server_minor();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_minor() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 7                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 2), '.', -1);
END//
DELIMITER ;

-- Dumping structure for function sys.version_patch
DELIMITER //
CREATE FUNCTION `version_patch`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns the patch release version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.version_patch();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_patch() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 9                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', -1);
END//
DELIMITER ;

-- Dumping structure for view sys.waits_by_host_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `waits_by_host_by_latency` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`event` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.waits_by_user_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `waits_by_user_by_latency` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`event` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.waits_global_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `waits_global_by_latency` (
	`events` VARCHAR(128) NOT NULL COMMENT 'Event name.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.wait_classes_global_by_avg_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `wait_classes_global_by_avg_latency` (
	`event_class` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`min_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.wait_classes_global_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `wait_classes_global_by_latency` (
	`event_class` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`min_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`avg_latency` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`max_latency` TEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$host_summary
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$host_summary` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`statements` DECIMAL(64,0) NULL,
	`statement_latency` DECIMAL(64,0) NULL,
	`statement_avg_latency` DECIMAL(65,4) NULL,
	`table_scans` DECIMAL(65,0) NULL,
	`file_ios` DECIMAL(64,0) NULL,
	`file_io_latency` DECIMAL(64,0) NULL,
	`current_connections` DECIMAL(41,0) NULL,
	`total_connections` DECIMAL(41,0) NULL,
	`unique_users` BIGINT(21) NOT NULL,
	`current_memory` DECIMAL(63,0) NULL,
	`total_memory_allocated` DECIMAL(64,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$host_summary_by_file_io
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$host_summary_by_file_io` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`ios` DECIMAL(42,0) NULL,
	`io_latency` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$host_summary_by_file_io_type
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$host_summary_by_file_io_type` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$host_summary_by_stages
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$host_summary_by_stages` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with HOST for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the timed summarized events.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the timed summarized events.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$host_summary_by_statement_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$host_summary_by_statement_latency` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`max_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
	`lock_latency` DECIMAL(42,0) NULL,
	`rows_sent` DECIMAL(42,0) NULL,
	`rows_examined` DECIMAL(42,0) NULL,
	`rows_affected` DECIMAL(42,0) NULL,
	`full_scans` DECIMAL(43,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$host_summary_by_statement_type
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$host_summary_by_statement_type` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`statement` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
	`lock_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_currentd table.',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
	`full_scans` BIGINT(21) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$innodb_buffer_stats_by_schema
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$innodb_buffer_stats_by_schema` (
	`object_schema` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`allocated` DECIMAL(43,0) NULL,
	`data` DECIMAL(43,0) NULL,
	`pages` BIGINT(21) NOT NULL,
	`pages_hashed` BIGINT(21) NOT NULL,
	`pages_old` BIGINT(21) NOT NULL,
	`rows_cached` DECIMAL(44,0) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$innodb_buffer_stats_by_table
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$innodb_buffer_stats_by_table` (
	`object_schema` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`object_name` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`allocated` DECIMAL(43,0) NULL,
	`data` DECIMAL(43,0) NULL,
	`pages` BIGINT(21) NOT NULL,
	`pages_hashed` BIGINT(21) NOT NULL,
	`pages_old` BIGINT(21) NOT NULL,
	`rows_cached` DECIMAL(44,0) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$innodb_lock_waits
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$innodb_lock_waits` (
	`wait_started` DATETIME NULL,
	`wait_age` TIME NULL,
	`wait_age_secs` BIGINT(21) NULL,
	`locked_table` VARCHAR(1024) NOT NULL COLLATE 'utf8mb3_general_ci',
	`locked_index` VARCHAR(1024) NULL COLLATE 'utf8mb3_general_ci',
	`locked_type` ENUM('RECORD','TABLE') NOT NULL COLLATE 'utf8mb3_general_ci',
	`waiting_trx_id` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_trx_started` DATETIME NOT NULL,
	`waiting_trx_age` TIME NULL,
	`waiting_trx_rows_locked` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_trx_rows_modified` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_pid` BIGINT(21) UNSIGNED NOT NULL,
	`waiting_query` VARCHAR(1024) NULL COLLATE 'utf8mb3_general_ci',
	`waiting_lock_id` VARCHAR(81) NOT NULL COLLATE 'utf8mb3_general_ci',
	`waiting_lock_mode` ENUM('S','S,GAP','X','X,GAP','IS','IS,GAP','IX','IX,GAP','AUTO_INC') NOT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_trx_id` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_pid` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_query` VARCHAR(1024) NULL COLLATE 'utf8mb3_general_ci',
	`blocking_lock_id` VARCHAR(81) NOT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_lock_mode` ENUM('S','S,GAP','X','X,GAP','IS','IS,GAP','IX','IX,GAP','AUTO_INC') NOT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_trx_started` DATETIME NOT NULL,
	`blocking_trx_age` TIME NULL,
	`blocking_trx_rows_locked` BIGINT(21) UNSIGNED NOT NULL,
	`blocking_trx_rows_modified` BIGINT(21) UNSIGNED NOT NULL,
	`sql_kill_blocking_query` VARCHAR(32) NOT NULL COLLATE 'utf8mb3_general_ci',
	`sql_kill_blocking_connection` VARCHAR(26) NOT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$io_by_thread_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$io_by_thread_by_latency` (
	`user` VARCHAR(384) NULL COLLATE 'utf8mb3_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`min_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
	`avg_latency` DECIMAL(24,4) NULL,
	`max_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
	`thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_NAME uniquely identifies the row.',
	`processlist_id` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$io_global_by_file_by_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$io_global_by_file_by_bytes` (
	`file` VARCHAR(512) NOT NULL COMMENT 'File name.' COLLATE 'utf8mb3_general_ci',
	`count_read` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
	`total_read` BIGINT(20) NOT NULL COMMENT 'Bytes read by read operations.',
	`avg_read` DECIMAL(23,4) NOT NULL,
	`count_write` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
	`total_written` BIGINT(20) NOT NULL COMMENT 'Bytes written by write operations.',
	`avg_write` DECIMAL(23,4) NOT NULL,
	`total` BIGINT(21) NOT NULL,
	`write_pct` DECIMAL(26,2) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$io_global_by_file_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$io_global_by_file_by_latency` (
	`file` VARCHAR(512) NOT NULL COMMENT 'File name.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`count_read` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
	`read_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
	`count_write` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
	`write_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
	`count_misc` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CREATE, DELETE, OPEN, CLOSE, STREAM_OPEN, STREAM_CLOSE, SEEK, TELL, FLUSH, STAT, FSTAT, CHSIZE, RENAME, and SYNC.',
	`misc_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$io_global_by_wait_by_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$io_global_by_wait_by_bytes` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`min_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
	`count_read` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
	`total_read` BIGINT(20) NOT NULL COMMENT 'Bytes read by read operations.',
	`avg_read` DECIMAL(23,4) NOT NULL,
	`count_write` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
	`total_written` BIGINT(20) NOT NULL COMMENT 'Bytes written by write operations.',
	`avg_written` DECIMAL(23,4) NOT NULL,
	`total_requested` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$io_global_by_wait_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$io_global_by_wait_by_latency` (
	`event_name` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
	`read_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
	`write_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
	`misc_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
	`count_read` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
	`total_read` BIGINT(20) NOT NULL COMMENT 'Bytes read by read operations.',
	`avg_read` DECIMAL(23,4) NOT NULL,
	`count_write` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
	`total_written` BIGINT(20) NOT NULL COMMENT 'Bytes written by write operations.',
	`avg_written` DECIMAL(23,4) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$latest_file_io
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$latest_file_io` (
	`thread` VARCHAR(214) NULL COLLATE 'utf8mb3_general_ci',
	`file` VARCHAR(512) NULL COMMENT 'File name for file I/O objects, table name for table I/O objects, the socket\'s IP:PORT value for a socket object or NULL for a synchronization object.' COLLATE 'utf8mb3_general_ci',
	`latency` BIGINT(20) UNSIGNED NULL COMMENT 'Value in picoseconds of the event\'s duration or NULL if the event has not ended or timing is not collected.',
	`operation` VARCHAR(32) NOT NULL COMMENT 'Operation type, for example read, write or lock' COLLATE 'utf8mb3_general_ci',
	`requested` BIGINT(20) NULL COMMENT 'Number of bytes that the operation read or wrote, or NULL for table I/O waits.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$memory_by_host_by_current_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$memory_by_host_by_current_bytes` (
	`host` VARCHAR(60) NULL COLLATE 'utf8mb3_bin',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` DECIMAL(41,0) NULL,
	`current_avg_alloc` DECIMAL(45,4) NOT NULL,
	`current_max_alloc` BIGINT(20) NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
	`total_allocated` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$memory_by_thread_by_current_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$memory_by_thread_by_current_bytes` (
	`thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`user` VARCHAR(384) NULL COLLATE 'utf8mb3_general_ci',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` DECIMAL(41,0) NULL,
	`current_avg_alloc` DECIMAL(45,4) NOT NULL,
	`current_max_alloc` BIGINT(20) NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
	`total_allocated` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$memory_by_user_by_current_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$memory_by_user_by_current_bytes` (
	`user` VARCHAR(32) NULL COLLATE 'utf8mb3_bin',
	`current_count_used` DECIMAL(41,0) NULL,
	`current_allocated` DECIMAL(41,0) NULL,
	`current_avg_alloc` DECIMAL(45,4) NOT NULL,
	`current_max_alloc` BIGINT(20) NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
	`total_allocated` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$memory_global_by_current_bytes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$memory_global_by_current_bytes` (
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name.' COLLATE 'utf8mb3_general_ci',
	`current_count` BIGINT(20) NOT NULL COMMENT 'Currently allocated blocks that have not been freed (COUNT_ALLOC minus COUNT_FREE).',
	`current_alloc` BIGINT(20) NOT NULL COMMENT 'Current number of bytes used (total allocated minus total freed).',
	`current_avg_alloc` DECIMAL(23,4) NOT NULL,
	`high_count` BIGINT(20) NOT NULL COMMENT 'Highest number of allocated blocks (highest value of CURRENT_COUNT_USED).',
	`high_alloc` BIGINT(20) NOT NULL COMMENT 'Highest number of bytes used.',
	`high_avg_alloc` DECIMAL(23,4) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$memory_global_total
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$memory_global_total` (
	`total_allocated` DECIMAL(41,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$processlist
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$processlist` (
	`thd_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`conn_id` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
	`user` VARCHAR(384) NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Thread\'s default database, or NULL if none exists.' COLLATE 'utf8mb3_general_ci',
	`command` VARCHAR(16) NULL COMMENT 'Type of command executed by the thread. These correspond to the the COM_xxx client/server protocol commands, and the Com_xxx status variables. See Thread Command Values.' COLLATE 'utf8mb3_general_ci',
	`state` VARCHAR(64) NULL COMMENT 'Action, event or state indicating what the thread is doing.' COLLATE 'utf8mb3_general_ci',
	`time` BIGINT(20) NULL COMMENT 'Time in seconds the thread has been in its current state.',
	`current_statement` LONGTEXT NULL COMMENT 'Statement being executed by the thread, or NULL if a statement is not being executed. If a statement results in calling other statements, such as for a stored procedure, the innermost statement from the stored procedure is shown here.' COLLATE 'utf8mb3_general_ci',
	`statement_latency` BIGINT(20) UNSIGNED NULL,
	`progress` DECIMAL(26,2) NULL,
	`lock_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
	`rows_examined` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows read during the statement\'s execution.',
	`rows_sent` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows returned.',
	`rows_affected` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows affected the statement affected.',
	`tmp_tables` BIGINT(20) UNSIGNED NULL COMMENT 'Number of temp tables created by the statement.',
	`tmp_disk_tables` BIGINT(20) UNSIGNED NULL COMMENT 'Number of on-disk temp tables created by the statement.',
	`full_scan` VARCHAR(3) NULL COLLATE 'utf8mb3_general_ci',
	`last_statement` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`last_statement_latency` BIGINT(20) UNSIGNED NULL,
	`current_memory` DECIMAL(41,0) NULL,
	`last_wait` VARCHAR(128) NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table' COLLATE 'utf8mb3_general_ci',
	`last_wait_latency` VARCHAR(20) NULL COLLATE 'utf8mb3_general_ci',
	`source` VARCHAR(64) NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.' COLLATE 'utf8mb3_general_ci',
	`trx_latency` BIGINT(20) UNSIGNED NULL COMMENT 'The unit is picoseconds. Event duration. NULL if event has not timing information.',
	`trx_state` ENUM('ACTIVE','COMMITTED','ROLLED BACK') NULL COMMENT 'The current transaction state. The value is ACTIVE (after START TRANSACTION or BEGIN), COMMITTED (after COMMIT), or ROLLED BACK (after ROLLBACK).' COLLATE 'utf8mb3_general_ci',
	`trx_autocommit` ENUM('YES','NO') NULL COMMENT 'Whether autcommit mode was enabled when the transaction started.' COLLATE 'utf8mb3_general_ci',
	`pid` VARCHAR(1024) NULL COMMENT 'Attribute value.' COLLATE 'utf8mb3_bin',
	`program_name` VARCHAR(1024) NULL COMMENT 'Attribute value.' COLLATE 'utf8mb3_bin'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$ps_digest_95th_percentile_by_avg_us
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$ps_digest_95th_percentile_by_avg_us` (
	`avg_us` DECIMAL(21,0) NULL,
	`percentile` DECIMAL(46,4) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$ps_digest_avg_latency_distribution
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$ps_digest_avg_latency_distribution` (
	`cnt` BIGINT(21) NOT NULL,
	`avg_us` DECIMAL(21,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$ps_schema_table_statistics_io
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$ps_schema_table_statistics_io` (
	`table_schema` VARCHAR(64) NULL COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NULL COLLATE 'utf8mb3_general_ci',
	`count_read` DECIMAL(42,0) NULL,
	`sum_number_of_bytes_read` DECIMAL(41,0) NULL,
	`sum_timer_read` DECIMAL(42,0) NULL,
	`count_write` DECIMAL(42,0) NULL,
	`sum_number_of_bytes_write` DECIMAL(41,0) NULL,
	`sum_timer_write` DECIMAL(42,0) NULL,
	`count_misc` DECIMAL(42,0) NULL,
	`sum_timer_misc` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$schema_flattened_keys
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$schema_flattened_keys` (
	`table_schema` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`index_name` VARCHAR(64) NOT NULL COLLATE 'utf8mb3_general_ci',
	`non_unique` BIGINT(1) NULL,
	`subpart_exists` BIGINT(1) NULL,
	`index_columns` MEDIUMTEXT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$schema_index_statistics
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$schema_index_statistics` (
	`table_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`index_name` VARCHAR(64) NULL COMMENT 'Index name, or PRIMARY for the primary index, NULL for no index (inserts are counted in this case).' COLLATE 'utf8mb3_general_ci',
	`rows_selected` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all fetch operations.',
	`select_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all fetch operations that are timed.',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all insert operations.',
	`insert_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all insert operations that are timed.',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all update operations.',
	`update_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all update operations that are timed.',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all delete operations.',
	`delete_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all insert operations that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$schema_tables_with_full_table_scans
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$schema_tables_with_full_table_scans` (
	`object_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`object_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`rows_full_scanned` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all read operations, and the sum of the equivalent x_FETCH columns.',
	`latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$schema_table_lock_waits
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$schema_table_lock_waits` (
	`object_schema` VARCHAR(64) NULL COMMENT 'Object schema.' COLLATE 'utf8mb3_general_ci',
	`object_name` VARCHAR(64) NULL COMMENT 'Object name.' COLLATE 'utf8mb3_general_ci',
	`waiting_thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`waiting_pid` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
	`waiting_account` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`waiting_lock_type` VARCHAR(32) NOT NULL COMMENT 'Lock type. One of BACKUP_FTWRL1, BACKUP_START, BACKUP_TRANS_DML, EXCLUSIVE, INTENTION_EXCLUSIVE, SHARED, SHARED_HIGH_PRIO, SHARED_NO_READ_WRITE, SHARED_NO_WRITE, SHARED_READ, SHARED_UPGRADABLE or SHARED_WRITE.' COLLATE 'utf8mb3_general_ci',
	`waiting_lock_duration` VARCHAR(32) NOT NULL COMMENT 'Lock duration. One of EXPLICIT (locks released by explicit action, for example a global lock acquired with FLUSH TABLES WITH READ LOCK) , STATEMENT (locks implicitly released at statement end) or TRANSACTION (locks implicitly released at transaction end).' COLLATE 'utf8mb3_general_ci',
	`waiting_query` LONGTEXT NULL COMMENT 'Statement being executed by the thread, or NULL if a statement is not being executed. If a statement results in calling other statements, such as for a stored procedure, the innermost statement from the stored procedure is shown here.' COLLATE 'utf8mb3_general_ci',
	`waiting_query_secs` BIGINT(20) NULL COMMENT 'Time in seconds the thread has been in its current state.',
	`waiting_query_rows_affected` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows affected the statement affected.',
	`waiting_query_rows_examined` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows read during the statement\'s execution.',
	`blocking_thread_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`blocking_pid` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
	`blocking_account` TEXT NULL COLLATE 'utf8mb3_general_ci',
	`blocking_lock_type` VARCHAR(32) NOT NULL COMMENT 'Lock type. One of BACKUP_FTWRL1, BACKUP_START, BACKUP_TRANS_DML, EXCLUSIVE, INTENTION_EXCLUSIVE, SHARED, SHARED_HIGH_PRIO, SHARED_NO_READ_WRITE, SHARED_NO_WRITE, SHARED_READ, SHARED_UPGRADABLE or SHARED_WRITE.' COLLATE 'utf8mb3_general_ci',
	`blocking_lock_duration` VARCHAR(32) NOT NULL COMMENT 'Lock duration. One of EXPLICIT (locks released by explicit action, for example a global lock acquired with FLUSH TABLES WITH READ LOCK) , STATEMENT (locks implicitly released at statement end) or TRANSACTION (locks implicitly released at transaction end).' COLLATE 'utf8mb3_general_ci',
	`sql_kill_blocking_query` VARCHAR(31) NULL COLLATE 'utf8mb3_general_ci',
	`sql_kill_blocking_connection` VARCHAR(25) NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$schema_table_statistics
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$schema_table_statistics` (
	`table_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`rows_fetched` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all fetch operations.',
	`fetch_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all fetch operations that are timed.',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all insert operations.',
	`insert_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all insert operations that are timed.',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all update operations.',
	`update_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all update operations that are timed.',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all delete operations.',
	`delete_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all delete operations that are timed.',
	`io_read_requests` DECIMAL(42,0) NULL,
	`io_read` DECIMAL(41,0) NULL,
	`io_read_latency` DECIMAL(42,0) NULL,
	`io_write_requests` DECIMAL(42,0) NULL,
	`io_write` DECIMAL(41,0) NULL,
	`io_write_latency` DECIMAL(42,0) NULL,
	`io_misc_requests` DECIMAL(42,0) NULL,
	`io_misc_latency` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$schema_table_statistics_with_buffer
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$schema_table_statistics_with_buffer` (
	`table_schema` VARCHAR(64) NULL COMMENT 'Schema name.' COLLATE 'utf8mb3_general_ci',
	`table_name` VARCHAR(64) NULL COMMENT 'Table name.' COLLATE 'utf8mb3_general_ci',
	`rows_fetched` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all fetch operations.',
	`fetch_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all fetch operations that are timed.',
	`rows_inserted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all insert operations.',
	`insert_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all insert operations that are timed.',
	`rows_updated` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all update operations.',
	`update_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all update operations that are timed.',
	`rows_deleted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of all delete operations.',
	`delete_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of all delete operations that are timed.',
	`io_read_requests` DECIMAL(42,0) NULL,
	`io_read` DECIMAL(41,0) NULL,
	`io_read_latency` DECIMAL(42,0) NULL,
	`io_write_requests` DECIMAL(42,0) NULL,
	`io_write` DECIMAL(41,0) NULL,
	`io_write_latency` DECIMAL(42,0) NULL,
	`io_misc_requests` DECIMAL(42,0) NULL,
	`io_misc_latency` DECIMAL(42,0) NULL,
	`innodb_buffer_allocated` DECIMAL(43,0) NULL,
	`innodb_buffer_data` DECIMAL(43,0) NULL,
	`innodb_buffer_free` DECIMAL(44,0) NULL,
	`innodb_buffer_pages` BIGINT(21) NULL,
	`innodb_buffer_pages_hashed` BIGINT(21) NULL,
	`innodb_buffer_pages_old` BIGINT(21) NULL,
	`innodb_buffer_rows_cached` DECIMAL(44,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$session
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$session` (
	`thd_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'A unique thread identifier.',
	`conn_id` BIGINT(20) UNSIGNED NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
	`user` VARCHAR(384) NULL COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Thread\'s default database, or NULL if none exists.' COLLATE 'utf8mb3_general_ci',
	`command` VARCHAR(16) NULL COMMENT 'Type of command executed by the thread. These correspond to the the COM_xxx client/server protocol commands, and the Com_xxx status variables. See Thread Command Values.' COLLATE 'utf8mb3_general_ci',
	`state` VARCHAR(64) NULL COMMENT 'Action, event or state indicating what the thread is doing.' COLLATE 'utf8mb3_general_ci',
	`time` BIGINT(20) NULL COMMENT 'Time in seconds the thread has been in its current state.',
	`current_statement` LONGTEXT NULL COMMENT 'Statement being executed by the thread, or NULL if a statement is not being executed. If a statement results in calling other statements, such as for a stored procedure, the innermost statement from the stored procedure is shown here.' COLLATE 'utf8mb3_general_ci',
	`statement_latency` BIGINT(20) UNSIGNED NULL,
	`progress` DECIMAL(26,2) NULL,
	`lock_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
	`rows_examined` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows read during the statement\'s execution.',
	`rows_sent` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows returned.',
	`rows_affected` BIGINT(20) UNSIGNED NULL COMMENT 'Number of rows affected the statement affected.',
	`tmp_tables` BIGINT(20) UNSIGNED NULL COMMENT 'Number of temp tables created by the statement.',
	`tmp_disk_tables` BIGINT(20) UNSIGNED NULL COMMENT 'Number of on-disk temp tables created by the statement.',
	`full_scan` VARCHAR(3) NULL COLLATE 'utf8mb3_general_ci',
	`last_statement` LONGTEXT NULL COLLATE 'utf8mb3_general_ci',
	`last_statement_latency` BIGINT(20) UNSIGNED NULL,
	`current_memory` DECIMAL(41,0) NULL,
	`last_wait` VARCHAR(128) NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table' COLLATE 'utf8mb3_general_ci',
	`last_wait_latency` VARCHAR(20) NULL COLLATE 'utf8mb3_general_ci',
	`source` VARCHAR(64) NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.' COLLATE 'utf8mb3_general_ci',
	`trx_latency` BIGINT(20) UNSIGNED NULL COMMENT 'The unit is picoseconds. Event duration. NULL if event has not timing information.',
	`trx_state` ENUM('ACTIVE','COMMITTED','ROLLED BACK') NULL COMMENT 'The current transaction state. The value is ACTIVE (after START TRANSACTION or BEGIN), COMMITTED (after COMMIT), or ROLLED BACK (after ROLLBACK).' COLLATE 'utf8mb3_general_ci',
	`trx_autocommit` ENUM('YES','NO') NULL COMMENT 'Whether autcommit mode was enabled when the transaction started.' COLLATE 'utf8mb3_general_ci',
	`pid` VARCHAR(1024) NULL COMMENT 'Attribute value.' COLLATE 'utf8mb3_bin',
	`program_name` VARCHAR(1024) NULL COMMENT 'Attribute value.' COLLATE 'utf8mb3_bin'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$statements_with_errors_or_warnings
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$statements_with_errors_or_warnings` (
	`query` LONGTEXT NULL COMMENT 'The unhashed form of the digest.' COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`errors` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
	`error_pct` DECIMAL(27,4) NOT NULL,
	`warnings` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
	`warning_pct` DECIMAL(27,4) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$statements_with_full_table_scans
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$statements_with_full_table_scans` (
	`query` LONGTEXT NULL COMMENT 'The unhashed form of the digest.' COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`no_index_used_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
	`no_good_index_used_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.',
	`no_index_used_pct` DECIMAL(24,0) NOT NULL,
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_sent_avg` DECIMAL(21,0) UNSIGNED NULL,
	`rows_examined_avg` DECIMAL(21,0) UNSIGNED NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$statements_with_runtimes_in_95th_percentile
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$statements_with_runtimes_in_95th_percentile` (
	`query` LONGTEXT NULL COMMENT 'The unhashed form of the digest.' COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`full_scan` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`err_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
	`warn_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_sent_avg` DECIMAL(21,0) NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_examined_avg` DECIMAL(21,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$statements_with_sorting
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$statements_with_sorting` (
	`query` LONGTEXT NULL COMMENT 'The unhashed form of the digest.' COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`sort_merge_passes` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
	`avg_sort_merges` DECIMAL(21,0) NOT NULL,
	`sorts_using_scans` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
	`sort_using_range` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
	`rows_sorted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
	`avg_rows_sorted` DECIMAL(21,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$statements_with_temp_tables
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$statements_with_temp_tables` (
	`query` LONGTEXT NULL COMMENT 'The unhashed form of the digest.' COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`memory_tmp_tables` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
	`disk_tmp_tables` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
	`avg_tmp_tables_per_query` DECIMAL(21,0) NOT NULL,
	`tmp_tables_to_disk_pct` DECIMAL(24,0) NOT NULL,
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$statement_analysis
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$statement_analysis` (
	`query` LONGTEXT NULL COMMENT 'The unhashed form of the digest.' COLLATE 'utf8mb3_general_ci',
	`db` VARCHAR(64) NULL COMMENT 'Database name. Records are summarised together with DIGEST.' COLLATE 'utf8mb3_general_ci',
	`full_scan` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`exec_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`err_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
	`warn_count` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
	`lock_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_sent_avg` DECIMAL(21,0) NOT NULL,
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_examined_avg` DECIMAL(21,0) NOT NULL,
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
	`rows_affected_avg` DECIMAL(21,0) NOT NULL,
	`tmp_tables` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
	`tmp_disk_tables` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
	`rows_sorted` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
	`sort_merge_passes` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
	`digest` VARCHAR(32) NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.' COLLATE 'utf8mb3_general_ci',
	`first_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was first seen.',
	`last_seen` TIMESTAMP NOT NULL COMMENT 'Time at which the digest was most recently seen.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$user_summary
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$user_summary` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`statements` DECIMAL(64,0) NULL,
	`statement_latency` DECIMAL(64,0) NULL,
	`statement_avg_latency` DECIMAL(65,4) NOT NULL,
	`table_scans` DECIMAL(65,0) NULL,
	`file_ios` DECIMAL(64,0) NULL,
	`file_io_latency` DECIMAL(64,0) NULL,
	`current_connections` DECIMAL(41,0) NULL,
	`total_connections` DECIMAL(41,0) NULL,
	`unique_hosts` BIGINT(21) NOT NULL,
	`current_memory` DECIMAL(63,0) NULL,
	`total_memory_allocated` DECIMAL(64,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$user_summary_by_file_io
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$user_summary_by_file_io` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`ios` DECIMAL(42,0) NULL,
	`io_latency` DECIMAL(42,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$user_summary_by_file_io_type
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$user_summary_by_file_io_type` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$user_summary_by_stages
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$user_summary_by_stages` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`event_name` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the timed summarized events.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the timed summarized events.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$user_summary_by_statement_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$user_summary_by_statement_latency` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`max_latency` DECIMAL(42,0) NULL,
	`lock_latency` DECIMAL(42,0) NULL,
	`rows_sent` DECIMAL(42,0) NULL,
	`rows_examined` DECIMAL(42,0) NULL,
	`rows_affected` DECIMAL(42,0) NULL,
	`full_scans` DECIMAL(43,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$user_summary_by_statement_type
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$user_summary_by_statement_type` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`statement` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
	`lock_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
	`rows_sent` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
	`rows_examined` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
	`rows_affected` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
	`full_scans` BIGINT(21) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$waits_by_host_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$waits_by_host_by_latency` (
	`host` VARCHAR(255) NULL COLLATE 'utf8mb3_bin',
	`event` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$waits_by_user_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$waits_by_user_by_latency` (
	`user` VARCHAR(128) NULL COLLATE 'utf8mb3_bin',
	`event` VARCHAR(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$waits_global_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$waits_global_by_latency` (
	`events` VARCHAR(128) NOT NULL COMMENT 'Event name.' COLLATE 'utf8mb3_general_ci',
	`total` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Number of summarized events',
	`total_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
	`avg_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
	`max_latency` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$wait_classes_global_by_avg_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$wait_classes_global_by_avg_latency` (
	`event_class` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`min_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
	`avg_latency` DECIMAL(46,4) NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.x$wait_classes_global_by_latency
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `x$wait_classes_global_by_latency` (
	`event_class` VARCHAR(128) NOT NULL COLLATE 'utf8mb3_general_ci',
	`total` DECIMAL(42,0) NULL,
	`total_latency` DECIMAL(42,0) NULL,
	`min_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
	`avg_latency` DECIMAL(46,4) NOT NULL,
	`max_latency` BIGINT(20) UNSIGNED NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=MyISAM;

-- Dumping structure for view sys.host_summary
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `host_summary`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `host_summary` AS SELECT IF(accounts.host IS NULL, 'background', accounts.host) AS host,
       SUM(stmt.total) AS statements,
       sys.format_time(SUM(stmt.total_latency)) AS statement_latency,
       sys.format_time(IFNULL(SUM(stmt.total_latency) / NULLIF(SUM(stmt.total), 0), 0)) AS statement_avg_latency,
       SUM(stmt.full_scans) AS table_scans,
       SUM(io.ios) AS file_ios,
       sys.format_time(SUM(io.io_latency)) AS file_io_latency,
       SUM(accounts.current_connections) AS current_connections,
       SUM(accounts.total_connections) AS total_connections,
       COUNT(DISTINCT user) AS unique_users,
       sys.format_bytes(SUM(mem.current_allocated)) AS current_memory,
       sys.format_bytes(SUM(mem.total_allocated)) AS total_memory_allocated
  FROM performance_schema.accounts
  JOIN sys.x$host_summary_by_statement_latency AS stmt ON accounts.host = stmt.host
  JOIN sys.x$host_summary_by_file_io AS io ON accounts.host = io.host
  JOIN sys.x$memory_by_host_by_current_bytes mem ON accounts.host = mem.host
 GROUP BY IF(accounts.host IS NULL, 'background', accounts.host); ;

-- Dumping structure for view sys.host_summary_by_file_io
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `host_summary_by_file_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `host_summary_by_file_io` AS SELECT IF(host IS NULL, 'background', host) AS host,
       SUM(count_star) AS ios,
       sys.format_time(SUM(sum_timer_wait)) AS io_latency
  FROM performance_schema.events_waits_summary_by_host_by_event_name
 WHERE event_name LIKE 'wait/io/file/%'
 GROUP BY IF(host IS NULL, 'background', host)
 ORDER BY SUM(sum_timer_wait) DESC; ;

-- Dumping structure for view sys.host_summary_by_file_io_type
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `host_summary_by_file_io_type` AS SELECT IF(host IS NULL, 'background', host) AS host,
       event_name,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(max_timer_wait) AS max_latency
  FROM performance_schema.events_waits_summary_by_host_by_event_name
 WHERE event_name LIKE 'wait/io/file%'
   AND count_star > 0
 ORDER BY IF(host IS NULL, 'background', host), sum_timer_wait DESC; ;

-- Dumping structure for view sys.host_summary_by_stages
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `host_summary_by_stages`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `host_summary_by_stages` AS SELECT IF(host IS NULL, 'background', host) AS host,
       event_name,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(avg_timer_wait) AS avg_latency
  FROM performance_schema.events_stages_summary_by_host_by_event_name
 WHERE sum_timer_wait != 0
 ORDER BY IF(host IS NULL, 'background', host), sum_timer_wait DESC; ;

-- Dumping structure for view sys.host_summary_by_statement_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `host_summary_by_statement_latency` AS SELECT IF(host IS NULL, 'background', host) AS host,
       SUM(count_star) AS total,
       sys.format_time(SUM(sum_timer_wait)) AS total_latency,
       sys.format_time(MAX(max_timer_wait)) AS max_latency,
       sys.format_time(SUM(sum_lock_time)) AS lock_latency,
       SUM(sum_rows_sent) AS rows_sent,
       SUM(sum_rows_examined) AS rows_examined,
       SUM(sum_rows_affected) AS rows_affected,
       SUM(sum_no_index_used) + SUM(sum_no_good_index_used) AS full_scans
  FROM performance_schema.events_statements_summary_by_host_by_event_name
 GROUP BY IF(host IS NULL, 'background', host)
 ORDER BY SUM(sum_timer_wait) DESC; ;

-- Dumping structure for view sys.host_summary_by_statement_type
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `host_summary_by_statement_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `host_summary_by_statement_type` AS SELECT IF(host IS NULL, 'background', host) AS host,
       SUBSTRING_INDEX(event_name, '/', -1) AS statement,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(max_timer_wait) AS max_latency,
       sys.format_time(sum_lock_time) AS lock_latency,
       sum_rows_sent AS rows_sent,
       sum_rows_examined AS rows_examined,
       sum_rows_affected AS rows_affected,
       sum_no_index_used + sum_no_good_index_used AS full_scans
  FROM performance_schema.events_statements_summary_by_host_by_event_name
 WHERE sum_timer_wait != 0
 ORDER BY IF(host IS NULL, 'background', host), sum_timer_wait DESC; ;

-- Dumping structure for view sys.innodb_buffer_stats_by_schema
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `innodb_buffer_stats_by_schema` AS SELECT IF(LOCATE('.', ibp.table_name) = 0, 'InnoDB System', REPLACE(SUBSTRING_INDEX(ibp.table_name, '.', 1), '`', '')) AS object_schema,
       sys.format_bytes(SUM(IF(ibp.compressed_size = 0, 16384, compressed_size))) AS allocated,
       sys.format_bytes(SUM(ibp.data_size)) AS data,
       COUNT(ibp.page_number) AS pages,
       COUNT(IF(ibp.is_hashed = 'YES', 1, NULL)) AS pages_hashed,
       COUNT(IF(ibp.is_old = 'YES', 1, NULL)) AS pages_old,
       ROUND(SUM(ibp.number_records)/COUNT(DISTINCT ibp.index_name)) AS rows_cached
  FROM information_schema.innodb_buffer_page ibp
 WHERE table_name IS NOT NULL
 GROUP BY object_schema
 ORDER BY SUM(IF(ibp.compressed_size = 0, 16384, compressed_size)) DESC; ;

-- Dumping structure for view sys.innodb_buffer_stats_by_table
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `innodb_buffer_stats_by_table` AS SELECT IF(LOCATE('.', ibp.table_name) = 0, 'InnoDB System', REPLACE(SUBSTRING_INDEX(ibp.table_name, '.', 1), '`', '')) AS object_schema,
       REPLACE(SUBSTRING_INDEX(ibp.table_name, '.', -1), '`', '') AS object_name,
       sys.format_bytes(SUM(IF(ibp.compressed_size = 0, 16384, compressed_size))) AS allocated,
       sys.format_bytes(SUM(ibp.data_size)) AS data,
       COUNT(ibp.page_number) AS pages,
       COUNT(IF(ibp.is_hashed = 'YES', 1, NULL)) AS pages_hashed,
       COUNT(IF(ibp.is_old = 'YES', 1, NULL)) AS pages_old,
       ROUND(SUM(ibp.number_records)/COUNT(DISTINCT ibp.index_name)) AS rows_cached
  FROM information_schema.innodb_buffer_page ibp
 WHERE table_name IS NOT NULL
 GROUP BY object_schema, object_name
 ORDER BY SUM(IF(ibp.compressed_size = 0, 16384, compressed_size)) DESC; ;

-- Dumping structure for view sys.innodb_lock_waits
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `innodb_lock_waits`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `innodb_lock_waits` AS SELECT r.trx_wait_started AS wait_started,
       TIMEDIFF(NOW(), r.trx_wait_started) AS wait_age,
       TIMESTAMPDIFF(SECOND, r.trx_wait_started, NOW()) AS wait_age_secs,
       rl.lock_table AS locked_table,
       rl.lock_index AS locked_index,
       rl.lock_type AS locked_type,
       r.trx_id AS waiting_trx_id,
       r.trx_started as waiting_trx_started,
       TIMEDIFF(NOW(), r.trx_started) AS waiting_trx_age,
       r.trx_rows_locked AS waiting_trx_rows_locked,
       r.trx_rows_modified AS waiting_trx_rows_modified,
       r.trx_mysql_thread_id AS waiting_pid,
       sys.format_statement(r.trx_query) AS waiting_query,
       rl.lock_id AS waiting_lock_id,
       rl.lock_mode AS waiting_lock_mode,
       b.trx_id AS blocking_trx_id,
       b.trx_mysql_thread_id AS blocking_pid,
       sys.format_statement(b.trx_query) AS blocking_query,
       bl.lock_id AS blocking_lock_id,
       bl.lock_mode AS blocking_lock_mode,
       b.trx_started AS blocking_trx_started,
       TIMEDIFF(NOW(), b.trx_started) AS blocking_trx_age,
       b.trx_rows_locked AS blocking_trx_rows_locked,
       b.trx_rows_modified AS blocking_trx_rows_modified,
       CONCAT('KILL QUERY ', b.trx_mysql_thread_id) AS sql_kill_blocking_query,
       CONCAT('KILL ', b.trx_mysql_thread_id) AS sql_kill_blocking_connection
  FROM information_schema.innodb_lock_waits w
       INNER JOIN information_schema.innodb_trx b    ON b.trx_id = w.blocking_trx_id
       INNER JOIN information_schema.innodb_trx r    ON r.trx_id = w.requesting_trx_id
       INNER JOIN information_schema.innodb_locks bl ON bl.lock_id = w.blocking_lock_id
       INNER JOIN information_schema.innodb_locks rl ON rl.lock_id = w.requested_lock_id
 ORDER BY r.trx_wait_started; ;

-- Dumping structure for view sys.io_by_thread_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `io_by_thread_by_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `io_by_thread_by_latency` AS SELECT IF(processlist_id IS NULL,
             SUBSTRING_INDEX(name, '/', -1),
             CONCAT(processlist_user, '@', processlist_host)
          ) user,
       SUM(count_star) total,
       sys.format_time(SUM(sum_timer_wait)) total_latency,
       sys.format_time(MIN(min_timer_wait)) min_latency,
       sys.format_time(AVG(avg_timer_wait)) avg_latency,
       sys.format_time(MAX(max_timer_wait)) max_latency,
       thread_id,
       processlist_id
  FROM performance_schema.events_waits_summary_by_thread_by_event_name
  LEFT JOIN performance_schema.threads USING (thread_id)
 WHERE event_name LIKE 'wait/io/file/%'
   AND sum_timer_wait > 0
 GROUP BY thread_id, processlist_id, user
 ORDER BY SUM(sum_timer_wait) DESC; ;

-- Dumping structure for view sys.io_global_by_file_by_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `io_global_by_file_by_bytes` AS SELECT sys.format_path(file_name) AS file,
       count_read,
       sys.format_bytes(sum_number_of_bytes_read) AS total_read,
       sys.format_bytes(IFNULL(sum_number_of_bytes_read / NULLIF(count_read, 0), 0)) AS avg_read,
       count_write,
       sys.format_bytes(sum_number_of_bytes_write) AS total_written,
       sys.format_bytes(IFNULL(sum_number_of_bytes_write / NULLIF(count_write, 0), 0.00)) AS avg_write,
       sys.format_bytes(sum_number_of_bytes_read + sum_number_of_bytes_write) AS total,
       IFNULL(ROUND(100-((sum_number_of_bytes_read/ NULLIF((sum_number_of_bytes_read+sum_number_of_bytes_write), 0))*100), 2), 0.00) AS write_pct
  FROM performance_schema.file_summary_by_instance
 ORDER BY sum_number_of_bytes_read + sum_number_of_bytes_write DESC; ;

-- Dumping structure for view sys.io_global_by_file_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `io_global_by_file_by_latency` AS SELECT sys.format_path(file_name) AS file,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       count_read,
       sys.format_time(sum_timer_read) AS read_latency,
       count_write,
       sys.format_time(sum_timer_write) AS write_latency,
       count_misc,
       sys.format_time(sum_timer_misc) AS misc_latency
  FROM performance_schema.file_summary_by_instance
 ORDER BY sum_timer_wait DESC; ;

-- Dumping structure for view sys.io_global_by_wait_by_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `io_global_by_wait_by_bytes` AS SELECT SUBSTRING_INDEX(event_name, '/', -2) event_name,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(min_timer_wait) AS min_latency,
       sys.format_time(avg_timer_wait) AS avg_latency,
       sys.format_time(max_timer_wait) AS max_latency,
       count_read,
       sys.format_bytes(sum_number_of_bytes_read) AS total_read,
       sys.format_bytes(IFNULL(sum_number_of_bytes_read / NULLIF(count_read, 0), 0)) AS avg_read,
       count_write,
       sys.format_bytes(sum_number_of_bytes_write) AS total_written,
       sys.format_bytes(IFNULL(sum_number_of_bytes_write / NULLIF(count_write, 0), 0)) AS avg_written,
       sys.format_bytes(sum_number_of_bytes_write + sum_number_of_bytes_read) AS total_requested
  FROM performance_schema.file_summary_by_event_name
 WHERE event_name LIKE 'wait/io/file/%'
   AND count_star > 0
 ORDER BY sum_number_of_bytes_write + sum_number_of_bytes_read DESC; ;

-- Dumping structure for view sys.io_global_by_wait_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `io_global_by_wait_by_latency` AS SELECT SUBSTRING_INDEX(event_name, '/', -2) AS event_name,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(avg_timer_wait) AS avg_latency,
       sys.format_time(max_timer_wait) AS max_latency,
       sys.format_time(sum_timer_read) AS read_latency,
       sys.format_time(sum_timer_write) AS write_latency,
       sys.format_time(sum_timer_misc) AS misc_latency,
       count_read,
       sys.format_bytes(sum_number_of_bytes_read) AS total_read,
       sys.format_bytes(IFNULL(sum_number_of_bytes_read / NULLIF(count_read, 0), 0)) AS avg_read,
       count_write,
       sys.format_bytes(sum_number_of_bytes_write) AS total_written,
       sys.format_bytes(IFNULL(sum_number_of_bytes_write / NULLIF(count_write, 0), 0)) AS avg_written
  FROM performance_schema.file_summary_by_event_name
 WHERE event_name LIKE 'wait/io/file/%'
   AND count_star > 0
 ORDER BY sum_timer_wait DESC; ;

-- Dumping structure for view sys.latest_file_io
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `latest_file_io`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `latest_file_io` AS SELECT IF(id IS NULL,
             CONCAT(SUBSTRING_INDEX(name, '/', -1), ':', thread_id),
             CONCAT(user, '@', host, ':', id)
          ) thread,
       sys.format_path(object_name) file,
       sys.format_time(timer_wait) AS latency,
       operation,
       sys.format_bytes(number_of_bytes) AS requested
  FROM performance_schema.events_waits_history_long
  JOIN performance_schema.threads USING (thread_id)
  LEFT JOIN information_schema.processlist ON processlist_id = id
 WHERE object_name IS NOT NULL
   AND event_name LIKE 'wait/io/file/%'
 ORDER BY timer_start; ;

-- Dumping structure for view sys.memory_by_host_by_current_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `memory_by_host_by_current_bytes` AS SELECT IF(host IS NULL, 'background', host) AS host,
       SUM(current_count_used) AS current_count_used,
       sys.format_bytes(SUM(current_number_of_bytes_used)) AS current_allocated,
       sys.format_bytes(IFNULL(SUM(current_number_of_bytes_used) / NULLIF(SUM(current_count_used), 0), 0)) AS current_avg_alloc,
       sys.format_bytes(MAX(current_number_of_bytes_used)) AS current_max_alloc,
       sys.format_bytes(SUM(sum_number_of_bytes_alloc)) AS total_allocated
  FROM performance_schema.memory_summary_by_host_by_event_name
 GROUP BY IF(host IS NULL, 'background', host)
 ORDER BY SUM(current_number_of_bytes_used) DESC; ;

-- Dumping structure for view sys.memory_by_thread_by_current_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `memory_by_thread_by_current_bytes` AS SELECT thread_id,
       IF(t.name = 'thread/sql/one_connection',
          CONCAT(t.processlist_user, '@', t.processlist_host),
          REPLACE(t.name, 'thread/', '')) user,
       SUM(mt.current_count_used) AS current_count_used,
       sys.format_bytes(SUM(mt.current_number_of_bytes_used)) AS current_allocated,
       sys.format_bytes(IFNULL(SUM(mt.current_number_of_bytes_used) / NULLIF(SUM(current_count_used), 0), 0)) AS current_avg_alloc,
       sys.format_bytes(MAX(mt.current_number_of_bytes_used)) AS current_max_alloc,
       sys.format_bytes(SUM(mt.sum_number_of_bytes_alloc)) AS total_allocated
  FROM performance_schema.memory_summary_by_thread_by_event_name AS mt
  JOIN performance_schema.threads AS t USING (thread_id)
 GROUP BY thread_id, IF(t.name = 'thread/sql/one_connection',
          CONCAT(t.processlist_user, '@', t.processlist_host),
          REPLACE(t.name, 'thread/', ''))
 ORDER BY SUM(current_number_of_bytes_used) DESC; ;

-- Dumping structure for view sys.memory_by_user_by_current_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `memory_by_user_by_current_bytes` AS SELECT IF(user IS NULL, 'background', user) AS user,
       SUM(current_count_used) AS current_count_used,
       sys.format_bytes(SUM(current_number_of_bytes_used)) AS current_allocated,
       sys.format_bytes(IFNULL(SUM(current_number_of_bytes_used) / NULLIF(SUM(current_count_used), 0), 0)) AS current_avg_alloc,
       sys.format_bytes(MAX(current_number_of_bytes_used)) AS current_max_alloc,
       sys.format_bytes(SUM(sum_number_of_bytes_alloc)) AS total_allocated
  FROM performance_schema.memory_summary_by_user_by_event_name
 GROUP BY IF(user IS NULL, 'background', user)
 ORDER BY SUM(current_number_of_bytes_used) DESC; ;

-- Dumping structure for view sys.memory_global_by_current_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `memory_global_by_current_bytes` AS SELECT event_name,
       current_count_used AS current_count,
       sys.format_bytes(current_number_of_bytes_used) AS current_alloc,
       sys.format_bytes(IFNULL(current_number_of_bytes_used / NULLIF(current_count_used, 0), 0)) AS current_avg_alloc,
       high_count_used AS high_count,
       sys.format_bytes(high_number_of_bytes_used) AS high_alloc,
       sys.format_bytes(IFNULL(high_number_of_bytes_used / NULLIF(high_count_used, 0), 0)) AS high_avg_alloc
  FROM performance_schema.memory_summary_global_by_event_name
 WHERE current_number_of_bytes_used > 0
 ORDER BY current_number_of_bytes_used DESC; ;

-- Dumping structure for view sys.memory_global_total
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `memory_global_total`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `memory_global_total` AS SELECT sys.format_bytes(SUM(CURRENT_NUMBER_OF_BYTES_USED)) total_allocated
  FROM performance_schema.memory_summary_global_by_event_name; ;

-- Dumping structure for view sys.metrics
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `metrics`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `metrics` AS (
SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value, 'Global Status' AS Type, 'YES' AS Enabled
  FROM performance_schema.global_status
) UNION ALL (
SELECT NAME AS Variable_name, COUNT AS Variable_value,
       CONCAT('InnoDB Metrics - ', SUBSYSTEM) AS Type,
      'YES' AS Enabled
  FROM information_schema.INNODB_METRICS
 WHERE NAME NOT IN (
     'lock_row_lock_time', 'lock_row_lock_time_avg', 'lock_row_lock_time_max', 'lock_row_lock_waits',
     'buffer_pool_reads', 'buffer_pool_read_requests', 'buffer_pool_write_requests', 'buffer_pool_wait_free',
     'buffer_pool_read_ahead', 'buffer_pool_read_ahead_evicted', 'buffer_pool_pages_total', 'buffer_pool_pages_misc',
     'buffer_pool_pages_data', 'buffer_pool_bytes_data', 'buffer_pool_pages_dirty', 'buffer_pool_bytes_dirty',
     'buffer_pool_pages_free', 'buffer_pages_created', 'buffer_pages_written', 'buffer_pages_read',
     'buffer_data_reads', 'buffer_data_written', 'file_num_open_files',
     'os_log_bytes_written', 'os_log_fsyncs', 'os_log_pending_fsyncs', 'os_log_pending_writes',
     'log_waits', 'log_write_requests', 'log_writes', 'innodb_dblwr_writes', 'innodb_dblwr_pages_written', 'innodb_page_size')
) 
  UNION ALL (
SELECT 'NOW()' AS Variable_name, NOW(3) AS Variable_value, 'System Time' AS Type, 'YES' AS Enabled
) UNION ALL (
SELECT 'UNIX_TIMESTAMP()' AS Variable_name, ROUND(UNIX_TIMESTAMP(NOW(3)), 3) AS Variable_value, 'System Time' AS Type, 'YES' AS Enabled
)
 ORDER BY Type, Variable_name; ;

-- Dumping structure for view sys.processlist
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `processlist`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `processlist` AS SELECT pps.thread_id AS thd_id,
       pps.processlist_id AS conn_id,
       IF(pps.name = 'thread/sql/one_connection',
          CONCAT(pps.processlist_user, '@', pps.processlist_host),
          REPLACE(pps.name, 'thread/', '')) user,
       pps.processlist_db AS db,
       pps.processlist_command AS command,
       pps.processlist_state AS state,
       pps.processlist_time AS time,
       sys.format_statement(pps.processlist_info) AS current_statement,
       IF(esc.end_event_id IS NULL,
          sys.format_time(esc.timer_wait),
          NULL) AS statement_latency,
       IF(esc.end_event_id IS NULL,
          ROUND(100 * (estc.work_completed / estc.work_estimated), 2),
          NULL) AS progress,
       sys.format_time(esc.lock_time) AS lock_latency,
       esc.rows_examined AS rows_examined,
       esc.rows_sent AS rows_sent,
       esc.rows_affected AS rows_affected,
       esc.created_tmp_tables AS tmp_tables,
       esc.created_tmp_disk_tables AS tmp_disk_tables,
       IF(esc.no_good_index_used > 0 OR esc.no_index_used > 0, 'YES', 'NO') AS full_scan,
       IF(esc.end_event_id IS NOT NULL,
          sys.format_statement(esc.sql_text),
          NULL) AS last_statement,
       IF(esc.end_event_id IS NOT NULL,
          sys.format_time(esc.timer_wait),
          NULL) AS last_statement_latency,
       sys.format_bytes(mem.current_allocated) AS current_memory,
       ewc.event_name AS last_wait,
       IF(ewc.end_event_id IS NULL AND ewc.event_name IS NOT NULL,
          'Still Waiting',
          sys.format_time(ewc.timer_wait)) last_wait_latency,
       ewc.source,
       sys.format_time(etc.timer_wait) AS trx_latency,
       etc.state AS trx_state,
       etc.autocommit AS trx_autocommit,
       conattr_pid.attr_value as pid,
       conattr_progname.attr_value as program_name
  FROM performance_schema.threads AS pps
  LEFT JOIN performance_schema.events_waits_current AS ewc USING (thread_id)
  LEFT JOIN performance_schema.events_stages_current AS estc USING (thread_id)
  LEFT JOIN performance_schema.events_statements_current AS esc USING (thread_id)
  LEFT JOIN performance_schema.events_transactions_current AS etc USING (thread_id)
  LEFT JOIN sys.x$memory_by_thread_by_current_bytes AS mem USING (thread_id)
  LEFT JOIN performance_schema.session_connect_attrs AS conattr_pid
    ON conattr_pid.processlist_id=pps.processlist_id and conattr_pid.attr_name='_pid'
  LEFT JOIN performance_schema.session_connect_attrs AS conattr_progname
    ON conattr_progname.processlist_id=pps.processlist_id and conattr_progname.attr_name='program_name'
 ORDER BY pps.processlist_time DESC, last_wait_latency DESC; ;

-- Dumping structure for view sys.ps_check_lost_instrumentation
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `ps_check_lost_instrumentation` AS SELECT variable_name, variable_value
  FROM performance_schema.global_status
 WHERE variable_name LIKE 'perf%lost'
   AND variable_value > 0; ;

-- Dumping structure for view sys.schema_auto_increment_columns
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_auto_increment_columns`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `schema_auto_increment_columns` AS SELECT TABLE_SCHEMA,
       TABLE_NAME,
       COLUMN_NAME,
       DATA_TYPE,
       COLUMN_TYPE,
       (LOCATE('unsigned', COLUMN_TYPE) = 0) AS is_signed,
       (LOCATE('unsigned', COLUMN_TYPE) > 0) AS is_unsigned,
       (
          CASE DATA_TYPE
            WHEN 'tinyint' THEN 255
            WHEN 'smallint' THEN 65535
            WHEN 'mediumint' THEN 16777215
            WHEN 'int' THEN 4294967295
            WHEN 'bigint' THEN 18446744073709551615
          END >> IF(LOCATE('unsigned', COLUMN_TYPE) > 0, 0, 1)
       ) AS max_value,
       AUTO_INCREMENT,
       AUTO_INCREMENT / (
         CASE DATA_TYPE
           WHEN 'tinyint' THEN 255
           WHEN 'smallint' THEN 65535
           WHEN 'mediumint' THEN 16777215
           WHEN 'int' THEN 4294967295
           WHEN 'bigint' THEN 18446744073709551615
         END >> IF(LOCATE('unsigned', COLUMN_TYPE) > 0, 0, 1)
       ) AS auto_increment_ratio
  FROM INFORMATION_SCHEMA.COLUMNS
 INNER JOIN INFORMATION_SCHEMA.TABLES USING (TABLE_SCHEMA, TABLE_NAME)
 WHERE TABLE_SCHEMA NOT IN ('mysql', 'sys', 'INFORMATION_SCHEMA', 'performance_schema')
   AND TABLE_TYPE='BASE TABLE'
   AND EXTRA='auto_increment'
 ORDER BY auto_increment_ratio DESC, max_value; ;

-- Dumping structure for view sys.schema_index_statistics
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_index_statistics`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `schema_index_statistics` AS SELECT OBJECT_SCHEMA AS table_schema,
       OBJECT_NAME AS table_name,
       INDEX_NAME as index_name,
       COUNT_FETCH AS rows_selected,
       sys.format_time(SUM_TIMER_FETCH) AS select_latency,
       COUNT_INSERT AS rows_inserted,
       sys.format_time(SUM_TIMER_INSERT) AS insert_latency,
       COUNT_UPDATE AS rows_updated,
       sys.format_time(SUM_TIMER_UPDATE) AS update_latency,
       COUNT_DELETE AS rows_deleted,
       sys.format_time(SUM_TIMER_INSERT) AS delete_latency
  FROM performance_schema.table_io_waits_summary_by_index_usage
 WHERE index_name IS NOT NULL
 ORDER BY sum_timer_wait DESC; ;

-- Dumping structure for view sys.schema_object_overview
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_object_overview`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `schema_object_overview` AS SELECT ROUTINE_SCHEMA AS db, ROUTINE_TYPE AS object_type, COUNT(*) AS count FROM information_schema.routines GROUP BY ROUTINE_SCHEMA, ROUTINE_TYPE
 UNION
SELECT TABLE_SCHEMA, TABLE_TYPE, COUNT(*) FROM information_schema.tables GROUP BY TABLE_SCHEMA, TABLE_TYPE
 UNION
SELECT TABLE_SCHEMA, CONCAT('INDEX (', INDEX_TYPE, ')'), COUNT(*) FROM information_schema.statistics GROUP BY TABLE_SCHEMA, INDEX_TYPE
 UNION
SELECT TRIGGER_SCHEMA, 'TRIGGER', COUNT(*) FROM information_schema.triggers GROUP BY TRIGGER_SCHEMA
 UNION
SELECT EVENT_SCHEMA, 'EVENT', COUNT(*) FROM information_schema.events GROUP BY EVENT_SCHEMA
ORDER BY DB, OBJECT_TYPE; ;

-- Dumping structure for view sys.schema_redundant_indexes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_redundant_indexes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `schema_redundant_indexes` AS SELECT
    redundant_keys.table_schema,
    redundant_keys.table_name,
    redundant_keys.index_name AS redundant_index_name,
    redundant_keys.index_columns AS redundant_index_columns,
    redundant_keys.non_unique AS redundant_index_non_unique,
    dominant_keys.index_name AS dominant_index_name,
    dominant_keys.index_columns AS dominant_index_columns,
    dominant_keys.non_unique AS dominant_index_non_unique,
    IF(redundant_keys.subpart_exists OR dominant_keys.subpart_exists, 1 ,0) AS subpart_exists,
    CONCAT(
      'ALTER TABLE `', redundant_keys.table_schema, '`.`', redundant_keys.table_name, '` DROP INDEX `', redundant_keys.index_name, '`'
      ) AS sql_drop_index
  FROM
    x$schema_flattened_keys AS redundant_keys
    INNER JOIN x$schema_flattened_keys AS dominant_keys
    USING (TABLE_SCHEMA, TABLE_NAME)
  WHERE
    redundant_keys.index_name != dominant_keys.index_name
    AND (
      (
        /* Identical columns */
        (redundant_keys.index_columns = dominant_keys.index_columns)
        AND (
          (redundant_keys.non_unique > dominant_keys.non_unique)
          OR (redundant_keys.non_unique = dominant_keys.non_unique
          	AND IF(redundant_keys.index_name='PRIMARY', '', redundant_keys.index_name) > IF(dominant_keys.index_name='PRIMARY', '', dominant_keys.index_name)
          )
        )
      )
      OR
      (
        /* Non-unique prefix columns */
        LOCATE(CONCAT(redundant_keys.index_columns, ','), dominant_keys.index_columns) = 1
        AND redundant_keys.non_unique = 1
      )
      OR
      (
        /* Unique prefix columns */
        LOCATE(CONCAT(dominant_keys.index_columns, ','), redundant_keys.index_columns) = 1
        AND dominant_keys.non_unique = 0
      )
    ); ;

-- Dumping structure for view sys.schema_tables_with_full_table_scans
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `schema_tables_with_full_table_scans` AS SELECT object_schema,
       object_name,
       count_read AS rows_full_scanned,
       sys.format_time(sum_timer_wait) AS latency
  FROM performance_schema.table_io_waits_summary_by_index_usage
 WHERE index_name IS NULL
   AND count_read > 0
 ORDER BY count_read DESC; ;

-- Dumping structure for view sys.schema_table_lock_waits
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_table_lock_waits`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `schema_table_lock_waits` AS SELECT g.object_schema AS object_schema,
       g.object_name AS object_name,
       pt.thread_id AS waiting_thread_id,
       pt.processlist_id AS waiting_pid,
       sys.ps_thread_account(p.owner_thread_id) AS waiting_account,
       p.lock_type AS waiting_lock_type,
       p.lock_duration AS waiting_lock_duration,
       sys.format_statement(pt.processlist_info) AS waiting_query,
       pt.processlist_time AS waiting_query_secs,
       ps.rows_affected AS waiting_query_rows_affected,
       ps.rows_examined AS waiting_query_rows_examined,
       gt.thread_id AS blocking_thread_id,
       gt.processlist_id AS blocking_pid,
       sys.ps_thread_account(g.owner_thread_id) AS blocking_account,
       g.lock_type AS blocking_lock_type,
       g.lock_duration AS blocking_lock_duration,
       CONCAT('KILL QUERY ', gt.processlist_id) AS sql_kill_blocking_query,
       CONCAT('KILL ', gt.processlist_id) AS sql_kill_blocking_connection
  FROM performance_schema.metadata_locks g
 INNER JOIN performance_schema.metadata_locks p
    ON g.object_type = p.object_type
   AND g.object_schema = p.object_schema
   AND g.object_name = p.object_name
   AND g.lock_status = 'GRANTED'
   AND p.lock_status = 'PENDING'
 INNER JOIN performance_schema.threads gt ON g.owner_thread_id = gt.thread_id
 INNER JOIN performance_schema.threads pt ON p.owner_thread_id = pt.thread_id
  LEFT JOIN performance_schema.events_statements_current gs ON g.owner_thread_id = gs.thread_id
  LEFT JOIN performance_schema.events_statements_current ps ON p.owner_thread_id = ps.thread_id
 WHERE g.object_type = 'TABLE'; ;

-- Dumping structure for view sys.schema_table_statistics
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_table_statistics`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `schema_table_statistics` AS SELECT pst.object_schema AS table_schema,
       pst.object_name AS table_name,
       sys.format_time(pst.sum_timer_wait) AS total_latency,
       pst.count_fetch AS rows_fetched,
       sys.format_time(pst.sum_timer_fetch) AS fetch_latency,
       pst.count_insert AS rows_inserted,
       sys.format_time(pst.sum_timer_insert) AS insert_latency,
       pst.count_update AS rows_updated,
       sys.format_time(pst.sum_timer_update) AS update_latency,
       pst.count_delete AS rows_deleted,
       sys.format_time(pst.sum_timer_delete) AS delete_latency,
       fsbi.count_read AS io_read_requests,
       sys.format_bytes(fsbi.sum_number_of_bytes_read) AS io_read,
       sys.format_time(fsbi.sum_timer_read) AS io_read_latency,
       fsbi.count_write AS io_write_requests,
       sys.format_bytes(fsbi.sum_number_of_bytes_write) AS io_write,
       sys.format_time(fsbi.sum_timer_write) AS io_write_latency,
       fsbi.count_misc AS io_misc_requests,
       sys.format_time(fsbi.sum_timer_misc) AS io_misc_latency
  FROM performance_schema.table_io_waits_summary_by_table AS pst
  LEFT JOIN x$ps_schema_table_statistics_io AS fsbi
    ON pst.object_schema = fsbi.table_schema
   AND pst.object_name = fsbi.table_name
 ORDER BY pst.sum_timer_wait DESC; ;

-- Dumping structure for view sys.schema_table_statistics_with_buffer
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `schema_table_statistics_with_buffer` AS SELECT pst.object_schema AS table_schema,
       pst.object_name AS table_name,
       pst.count_fetch AS rows_fetched,
       sys.format_time(pst.sum_timer_fetch) AS fetch_latency,
       pst.count_insert AS rows_inserted,
       sys.format_time(pst.sum_timer_insert) AS insert_latency,
       pst.count_update AS rows_updated,
       sys.format_time(pst.sum_timer_update) AS update_latency,
       pst.count_delete AS rows_deleted,
       sys.format_time(pst.sum_timer_delete) AS delete_latency,
       fsbi.count_read AS io_read_requests,
       sys.format_bytes(fsbi.sum_number_of_bytes_read) AS io_read,
       sys.format_time(fsbi.sum_timer_read) AS io_read_latency,
       fsbi.count_write AS io_write_requests,
       sys.format_bytes(fsbi.sum_number_of_bytes_write) AS io_write,
       sys.format_time(fsbi.sum_timer_write) AS io_write_latency,
       fsbi.count_misc AS io_misc_requests,
       sys.format_time(fsbi.sum_timer_misc) AS io_misc_latency,
       sys.format_bytes(ibp.allocated) AS innodb_buffer_allocated,
       sys.format_bytes(ibp.data) AS innodb_buffer_data,
       sys.format_bytes(ibp.allocated - ibp.data) AS innodb_buffer_free,
       ibp.pages AS innodb_buffer_pages,
       ibp.pages_hashed AS innodb_buffer_pages_hashed,
       ibp.pages_old AS innodb_buffer_pages_old,
       ibp.rows_cached AS innodb_buffer_rows_cached
  FROM performance_schema.table_io_waits_summary_by_table AS pst
  LEFT JOIN x$ps_schema_table_statistics_io AS fsbi
    ON pst.object_schema = fsbi.table_schema
   AND pst.object_name = fsbi.table_name
  LEFT JOIN sys.x$innodb_buffer_stats_by_table AS ibp
    ON pst.object_schema = ibp.object_schema
   AND pst.object_name = ibp.object_name
 ORDER BY pst.sum_timer_wait DESC; ;

-- Dumping structure for view sys.schema_unused_indexes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `schema_unused_indexes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `schema_unused_indexes` AS SELECT object_schema,
       object_name,
       index_name
  FROM performance_schema.table_io_waits_summary_by_index_usage
 WHERE index_name IS NOT NULL
   AND count_star = 0
   AND object_schema != 'mysql'
   AND index_name != 'PRIMARY'
 ORDER BY object_schema, object_name; ;

-- Dumping structure for view sys.session
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `session`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY INVOKER VIEW `session` AS SELECT * FROM sys.processlist
WHERE conn_id IS NOT NULL AND command != 'Daemon'; ;

-- Dumping structure for view sys.session_ssl_status
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `session_ssl_status`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `session_ssl_status` AS SELECT sslver.thread_id,
       sslver.variable_value ssl_version,
       sslcip.variable_value ssl_cipher,
       sslreuse.variable_value ssl_sessions_reused
  FROM performance_schema.status_by_thread sslver
  LEFT JOIN performance_schema.status_by_thread sslcip
    ON (sslcip.thread_id=sslver.thread_id and sslcip.variable_name='Ssl_cipher')
  LEFT JOIN performance_schema.status_by_thread sslreuse
    ON (sslreuse.thread_id=sslver.thread_id and sslreuse.variable_name='Ssl_sessions_reused')
 WHERE sslver.variable_name='Ssl_version'; ;

-- Dumping structure for view sys.statements_with_errors_or_warnings
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `statements_with_errors_or_warnings` AS SELECT sys.format_statement(DIGEST_TEXT) AS query,
       SCHEMA_NAME as db,
       COUNT_STAR AS exec_count,
       SUM_ERRORS AS errors,
       IFNULL(SUM_ERRORS / NULLIF(COUNT_STAR, 0), 0) * 100 as error_pct,
       SUM_WARNINGS AS warnings,
       IFNULL(SUM_WARNINGS / NULLIF(COUNT_STAR, 0), 0) * 100 as warning_pct,
       FIRST_SEEN as first_seen,
       LAST_SEEN as last_seen,
       DIGEST AS digest
  FROM performance_schema.events_statements_summary_by_digest
 WHERE SUM_ERRORS > 0
    OR SUM_WARNINGS > 0
ORDER BY SUM_ERRORS DESC, SUM_WARNINGS DESC; ;

-- Dumping structure for view sys.statements_with_full_table_scans
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `statements_with_full_table_scans`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `statements_with_full_table_scans` AS SELECT sys.format_statement(DIGEST_TEXT) AS query,
       SCHEMA_NAME as db,
       COUNT_STAR AS exec_count,
       sys.format_time(SUM_TIMER_WAIT) AS total_latency,
       SUM_NO_INDEX_USED AS no_index_used_count,
       SUM_NO_GOOD_INDEX_USED AS no_good_index_used_count,
       ROUND(IFNULL(SUM_NO_INDEX_USED / NULLIF(COUNT_STAR, 0), 0) * 100) AS no_index_used_pct,
       SUM_ROWS_SENT AS rows_sent,
       SUM_ROWS_EXAMINED AS rows_examined,
       ROUND(SUM_ROWS_SENT/COUNT_STAR) AS rows_sent_avg,
       ROUND(SUM_ROWS_EXAMINED/COUNT_STAR) AS rows_examined_avg,
       FIRST_SEEN as first_seen,
       LAST_SEEN as last_seen,
       DIGEST AS digest
  FROM performance_schema.events_statements_summary_by_digest
 WHERE (SUM_NO_INDEX_USED > 0
    OR SUM_NO_GOOD_INDEX_USED > 0)
   AND DIGEST_TEXT NOT LIKE 'SHOW%'
 ORDER BY no_index_used_pct DESC, total_latency DESC; ;

-- Dumping structure for view sys.statements_with_runtimes_in_95th_percentile
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT sys.format_statement(DIGEST_TEXT) AS query,
       SCHEMA_NAME as db,
       IF(SUM_NO_GOOD_INDEX_USED > 0 OR SUM_NO_INDEX_USED > 0, '*', '') AS full_scan,
       COUNT_STAR AS exec_count,
       SUM_ERRORS AS err_count,
       SUM_WARNINGS AS warn_count,
       sys.format_time(SUM_TIMER_WAIT) AS total_latency,
       sys.format_time(MAX_TIMER_WAIT) AS max_latency,
       sys.format_time(AVG_TIMER_WAIT) AS avg_latency,
       SUM_ROWS_SENT AS rows_sent,
       ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg,
       SUM_ROWS_EXAMINED AS rows_examined,
       ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg,
       FIRST_SEEN AS first_seen,
       LAST_SEEN AS last_seen,
       DIGEST AS digest
  FROM performance_schema.events_statements_summary_by_digest stmts
  JOIN sys.x$ps_digest_95th_percentile_by_avg_us AS top_percentile
    ON ROUND(stmts.avg_timer_wait/1000000) >= top_percentile.avg_us
 ORDER BY AVG_TIMER_WAIT DESC; ;

-- Dumping structure for view sys.statements_with_sorting
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `statements_with_sorting`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `statements_with_sorting` AS SELECT sys.format_statement(DIGEST_TEXT) AS query,
       SCHEMA_NAME db,
       COUNT_STAR AS exec_count,
       sys.format_time(SUM_TIMER_WAIT) AS total_latency,
       SUM_SORT_MERGE_PASSES AS sort_merge_passes,
       ROUND(IFNULL(SUM_SORT_MERGE_PASSES / NULLIF(COUNT_STAR, 0), 0)) AS avg_sort_merges,
       SUM_SORT_SCAN AS sorts_using_scans,
       SUM_SORT_RANGE AS sort_using_range,
       SUM_SORT_ROWS AS rows_sorted,
       ROUND(IFNULL(SUM_SORT_ROWS / NULLIF(COUNT_STAR, 0), 0)) AS avg_rows_sorted,
       FIRST_SEEN as first_seen,
       LAST_SEEN as last_seen,
       DIGEST AS digest
  FROM performance_schema.events_statements_summary_by_digest
 WHERE SUM_SORT_ROWS > 0
 ORDER BY SUM_TIMER_WAIT DESC; ;

-- Dumping structure for view sys.statements_with_temp_tables
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `statements_with_temp_tables`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `statements_with_temp_tables` AS SELECT sys.format_statement(DIGEST_TEXT) AS query,
       SCHEMA_NAME as db,
       COUNT_STAR AS exec_count,
       sys.format_time(SUM_TIMER_WAIT) as total_latency,
       SUM_CREATED_TMP_TABLES AS memory_tmp_tables,
       SUM_CREATED_TMP_DISK_TABLES AS disk_tmp_tables,
       ROUND(IFNULL(SUM_CREATED_TMP_TABLES / NULLIF(COUNT_STAR, 0), 0)) AS avg_tmp_tables_per_query,
       ROUND(IFNULL(SUM_CREATED_TMP_DISK_TABLES / NULLIF(SUM_CREATED_TMP_TABLES, 0), 0) * 100) AS tmp_tables_to_disk_pct,
       FIRST_SEEN as first_seen,
       LAST_SEEN as last_seen,
       DIGEST AS digest
  FROM performance_schema.events_statements_summary_by_digest
 WHERE SUM_CREATED_TMP_TABLES > 0
ORDER BY SUM_CREATED_TMP_DISK_TABLES DESC, SUM_CREATED_TMP_TABLES DESC; ;

-- Dumping structure for view sys.statement_analysis
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `statement_analysis`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `statement_analysis` AS SELECT sys.format_statement(DIGEST_TEXT) AS query,
       SCHEMA_NAME AS db,
       IF(SUM_NO_GOOD_INDEX_USED > 0 OR SUM_NO_INDEX_USED > 0, '*', '') AS full_scan,
       COUNT_STAR AS exec_count,
       SUM_ERRORS AS err_count,
       SUM_WARNINGS AS warn_count,
       sys.format_time(SUM_TIMER_WAIT) AS total_latency,
       sys.format_time(MAX_TIMER_WAIT) AS max_latency,
       sys.format_time(AVG_TIMER_WAIT) AS avg_latency,
       sys.format_time(SUM_LOCK_TIME) AS lock_latency,
       SUM_ROWS_SENT AS rows_sent,
       ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg,
       SUM_ROWS_EXAMINED AS rows_examined,
       ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0))  AS rows_examined_avg,
       SUM_ROWS_AFFECTED AS rows_affected,
       ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0))  AS rows_affected_avg,
       SUM_CREATED_TMP_TABLES AS tmp_tables,
       SUM_CREATED_TMP_DISK_TABLES AS tmp_disk_tables,
       SUM_SORT_ROWS AS rows_sorted,
       SUM_SORT_MERGE_PASSES AS sort_merge_passes,
       DIGEST AS digest,
       FIRST_SEEN AS first_seen,
       LAST_SEEN as last_seen
  FROM performance_schema.events_statements_summary_by_digest
ORDER BY SUM_TIMER_WAIT DESC; ;

-- Dumping structure for view sys.user_summary
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user_summary`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `user_summary` AS SELECT IF(accounts.user IS NULL, 'background', accounts.user) AS user,
       SUM(stmt.total) AS statements,
       sys.format_time(SUM(stmt.total_latency)) AS statement_latency,
       sys.format_time(IFNULL(SUM(stmt.total_latency) / NULLIF(SUM(stmt.total), 0), 0)) AS statement_avg_latency,
       SUM(stmt.full_scans) AS table_scans,
       SUM(io.ios) AS file_ios,
       sys.format_time(SUM(io.io_latency)) AS file_io_latency,
       SUM(accounts.current_connections) AS current_connections,
       SUM(accounts.total_connections) AS total_connections,
       COUNT(DISTINCT host) AS unique_hosts,
       sys.format_bytes(SUM(mem.current_allocated)) AS current_memory,
       sys.format_bytes(SUM(mem.total_allocated)) AS total_memory_allocated
  FROM performance_schema.accounts
  LEFT JOIN sys.x$user_summary_by_statement_latency AS stmt ON IF(accounts.user IS NULL, 'background', accounts.user) = stmt.user
  LEFT JOIN sys.x$user_summary_by_file_io AS io ON IF(accounts.user IS NULL, 'background', accounts.user) = io.user
  LEFT JOIN sys.x$memory_by_user_by_current_bytes mem ON IF(accounts.user IS NULL, 'background', accounts.user) = mem.user
 GROUP BY IF(accounts.user IS NULL, 'background', accounts.user)
 ORDER BY SUM(stmt.total_latency) DESC; ;

-- Dumping structure for view sys.user_summary_by_file_io
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user_summary_by_file_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `user_summary_by_file_io` AS SELECT IF(user IS NULL, 'background', user) AS user,
       SUM(count_star) AS ios,
       sys.format_time(SUM(sum_timer_wait)) AS io_latency
  FROM performance_schema.events_waits_summary_by_user_by_event_name
 WHERE event_name LIKE 'wait/io/file/%'
 GROUP BY IF(user IS NULL, 'background', user)
 ORDER BY SUM(sum_timer_wait) DESC; ;

-- Dumping structure for view sys.user_summary_by_file_io_type
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `user_summary_by_file_io_type` AS SELECT IF(user IS NULL, 'background', user) AS user,
       event_name,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS latency,
       sys.format_time(max_timer_wait) AS max_latency
  FROM performance_schema.events_waits_summary_by_user_by_event_name
 WHERE event_name LIKE 'wait/io/file%'
   AND count_star > 0
 ORDER BY user, sum_timer_wait DESC; ;

-- Dumping structure for view sys.user_summary_by_stages
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user_summary_by_stages`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `user_summary_by_stages` AS SELECT IF(user IS NULL, 'background', user) AS user,
       event_name,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(avg_timer_wait) AS avg_latency
  FROM performance_schema.events_stages_summary_by_user_by_event_name
 WHERE sum_timer_wait != 0
 ORDER BY user, sum_timer_wait DESC; ;

-- Dumping structure for view sys.user_summary_by_statement_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `user_summary_by_statement_latency` AS SELECT IF(user IS NULL, 'background', user) AS user,
       SUM(count_star) AS total,
       sys.format_time(SUM(sum_timer_wait)) AS total_latency,
       sys.format_time(SUM(max_timer_wait)) AS max_latency,
       sys.format_time(SUM(sum_lock_time)) AS lock_latency,
       SUM(sum_rows_sent) AS rows_sent,
       SUM(sum_rows_examined) AS rows_examined,
       SUM(sum_rows_affected) AS rows_affected,
       SUM(sum_no_index_used) + SUM(sum_no_good_index_used) AS full_scans
  FROM performance_schema.events_statements_summary_by_user_by_event_name
 GROUP BY IF(user IS NULL, 'background', user)
 ORDER BY SUM(sum_timer_wait) DESC; ;

-- Dumping structure for view sys.user_summary_by_statement_type
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user_summary_by_statement_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `user_summary_by_statement_type` AS SELECT IF(user IS NULL, 'background', user) AS user,
       SUBSTRING_INDEX(event_name, '/', -1) AS statement,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(max_timer_wait) AS max_latency,
       sys.format_time(sum_lock_time) AS lock_latency,
       sum_rows_sent AS rows_sent,
       sum_rows_examined AS rows_examined,
       sum_rows_affected AS rows_affected,
       sum_no_index_used + sum_no_good_index_used AS full_scans
  FROM performance_schema.events_statements_summary_by_user_by_event_name
 WHERE sum_timer_wait != 0
 ORDER BY user, sum_timer_wait DESC; ;

-- Dumping structure for view sys.version
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `version`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY INVOKER VIEW `version` AS SELECT '1.5.1' AS sys_version,
        version() AS mysql_version; ;

-- Dumping structure for view sys.waits_by_host_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `waits_by_host_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `waits_by_host_by_latency` AS SELECT IF(host IS NULL, 'background', host) AS host,
       event_name AS event,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(avg_timer_wait) AS avg_latency,
       sys.format_time(max_timer_wait) AS max_latency
  FROM performance_schema.events_waits_summary_by_host_by_event_name
 WHERE event_name != 'idle'
   AND sum_timer_wait > 0
 ORDER BY host, sum_timer_wait DESC; ;

-- Dumping structure for view sys.waits_by_user_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `waits_by_user_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `waits_by_user_by_latency` AS SELECT IF(user IS NULL, 'background', user) AS user,
       event_name AS event,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(avg_timer_wait) AS avg_latency,
       sys.format_time(max_timer_wait) AS max_latency
  FROM performance_schema.events_waits_summary_by_user_by_event_name
 WHERE event_name != 'idle'
   AND user IS NOT NULL
   AND sum_timer_wait > 0
 ORDER BY user, sum_timer_wait DESC; ;

-- Dumping structure for view sys.waits_global_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `waits_global_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `waits_global_by_latency` AS SELECT event_name AS event,
       count_star AS total,
       sys.format_time(sum_timer_wait) AS total_latency,
       sys.format_time(avg_timer_wait) AS avg_latency,
       sys.format_time(max_timer_wait) AS max_latency
  FROM performance_schema.events_waits_summary_global_by_event_name
 WHERE event_name != 'idle'
   AND sum_timer_wait > 0
 ORDER BY sum_timer_wait DESC; ;

-- Dumping structure for view sys.wait_classes_global_by_avg_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `wait_classes_global_by_avg_latency` AS SELECT SUBSTRING_INDEX(event_name,'/', 3) AS event_class,
       SUM(COUNT_STAR) AS total,
       sys.format_time(CAST(SUM(sum_timer_wait) AS UNSIGNED)) AS total_latency,
       sys.format_time(MIN(min_timer_wait)) AS min_latency,
       sys.format_time(IFNULL(SUM(sum_timer_wait) / NULLIF(SUM(COUNT_STAR), 0), 0)) AS avg_latency,
       sys.format_time(CAST(MAX(max_timer_wait) AS UNSIGNED)) AS max_latency
  FROM performance_schema.events_waits_summary_global_by_event_name
 WHERE sum_timer_wait > 0
   AND event_name != 'idle'
 GROUP BY event_class
 ORDER BY IFNULL(SUM(sum_timer_wait) / NULLIF(SUM(COUNT_STAR), 0), 0) DESC; ;

-- Dumping structure for view sys.wait_classes_global_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `wait_classes_global_by_latency` AS SELECT SUBSTRING_INDEX(event_name,'/', 3) AS event_class,
       SUM(COUNT_STAR) AS total,
       sys.format_time(SUM(sum_timer_wait)) AS total_latency,
       sys.format_time(MIN(min_timer_wait)) min_latency,
       sys.format_time(IFNULL(SUM(sum_timer_wait) / NULLIF(SUM(COUNT_STAR), 0), 0)) AS avg_latency,
       sys.format_time(MAX(max_timer_wait)) AS max_latency
  FROM performance_schema.events_waits_summary_global_by_event_name
 WHERE sum_timer_wait > 0
   AND event_name != 'idle'
 GROUP BY SUBSTRING_INDEX(event_name,'/', 3)
 ORDER BY SUM(sum_timer_wait) DESC; ;

-- Dumping structure for view sys.x$host_summary
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$host_summary`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary` AS select if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,sum(`stmt`.`total_latency`) / sum(`stmt`.`total`) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on(`performance_schema`.`accounts`.`HOST` = `stmt`.`host`)) join `sys`.`x$host_summary_by_file_io` `io` on(`performance_schema`.`accounts`.`HOST` = `io`.`host`)) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on(`performance_schema`.`accounts`.`HOST` = `mem`.`host`)) group by if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`);

-- Dumping structure for view sys.x$host_summary_by_file_io
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Dumping structure for view sys.x$host_summary_by_file_io_type
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$host_summary_by_stages
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$host_summary_by_stages`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where `performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$host_summary_by_statement_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Dumping structure for view sys.x$host_summary_by_statement_type
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$host_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$innodb_buffer_stats_by_schema
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$innodb_buffer_stats_by_schema` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED`,1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD`,1,NULL)) AS `pages_old`,round(ifnull(sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc;

-- Dumping structure for view sys.x$innodb_buffer_stats_by_table
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$innodb_buffer_stats_by_table` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') AS `object_name`,sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED`,1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD`,1,NULL)) AS `pages_old`,round(ifnull(sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')),replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc;

-- Dumping structure for view sys.x$innodb_lock_waits
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$innodb_lock_waits`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(current_timestamp(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,current_timestamp()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(current_timestamp(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(current_timestamp(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on(`b`.`trx_id` = `w`.`blocking_trx_id`)) join `information_schema`.`innodb_trx` `r` on(`r`.`trx_id` = `w`.`requesting_trx_id`)) join `information_schema`.`innodb_locks` `bl` on(`bl`.`lock_id` = `w`.`blocking_lock_id`)) join `information_schema`.`innodb_locks` `rl` on(`rl`.`lock_id` = `w`.`requested_lock_id`)) order by `r`.`trx_wait_started`;

-- Dumping structure for view sys.x$io_by_thread_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$io_by_thread_by_latency` AS select if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) where `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0 group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Dumping structure for view sys.x$io_global_by_file_by_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$io_global_by_file_by_bytes` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0),0.00) AS `avg_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total`,ifnull(round(100 - `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`,0) * 100,2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` desc;

-- Dumping structure for view sys.x$io_global_by_file_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$io_global_by_file_by_latency` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$io_global_by_wait_by_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0) AS `avg_written`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` desc;

-- Dumping structure for view sys.x$io_global_by_wait_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$latest_file_io
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$latest_file_io`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$latest_file_io` AS select if(`information_schema`.`processlist`.`ID` is null,concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on(`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) left join `information_schema`.`processlist` on(`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`)) where `performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null and `performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%' order by `performance_schema`.`events_waits_history_long`.`TIMER_START`;

-- Dumping structure for view sys.x$memory_by_host_by_current_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$memory_by_host_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Dumping structure for view sys.x$memory_by_thread_by_current_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$memory_by_thread_by_current_bytes` AS select `t`.`THREAD_ID` AS `thread_id`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on(`mt`.`THREAD_ID` = `t`.`THREAD_ID`)) group by `t`.`THREAD_ID`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Dumping structure for view sys.x$memory_by_user_by_current_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$memory_by_user_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc;

-- Dumping structure for view sys.x$memory_global_by_current_bytes
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0 order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc;

-- Dumping structure for view sys.x$memory_global_total
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$memory_global_total`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$memory_global_total` AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name`;

-- Dumping structure for view sys.x$processlist
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$processlist`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if(`pps`.`NAME` = 'thread/sql/one_connection',concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if(`esc`.`END_EVENT_ID` is null,`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if(`esc`.`END_EVENT_ID` is null,round(100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(`esc`.`NO_GOOD_INDEX_USED` > 0 or `esc`.`NO_INDEX_USED` > 0,'YES','NO') AS `full_scan`,if(`esc`.`END_EVENT_ID` is not null,`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if(`esc`.`END_EVENT_ID` is not null,`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on(`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`)) left join `performance_schema`.`events_stages_current` `estc` on(`pps`.`THREAD_ID` = `estc`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `esc` on(`pps`.`THREAD_ID` = `esc`.`THREAD_ID`)) left join `performance_schema`.`events_transactions_current` `etc` on(`pps`.`THREAD_ID` = `etc`.`THREAD_ID`)) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on(`pps`.`THREAD_ID` = `mem`.`thread_id`)) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_pid`.`ATTR_NAME` = '_pid')) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_progname`.`ATTR_NAME` = 'program_name')) order by `pps`.`PROCESSLIST_TIME` desc,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`ewc`.`TIMER_WAIT`) desc;

-- Dumping structure for view sys.x$ps_digest_95th_percentile_by_avg_us
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$ps_digest_95th_percentile_by_avg_us` AS select `s2`.`avg_us` AS `avg_us`,ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on(`s1`.`avg_us` <= `s2`.`avg_us`)) group by `s2`.`avg_us` having ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) > 0.95 order by ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) limit 1;

-- Dumping structure for view sys.x$ps_digest_avg_latency_distribution
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$ps_digest_avg_latency_distribution` AS select count(0) AS `cnt`,round(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000,0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by round(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000,0);

-- Dumping structure for view sys.x$ps_schema_table_statistics_io
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$ps_schema_table_statistics_io` AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`),`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`);

-- Dumping structure for view sys.x$schema_flattened_keys
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$schema_flattened_keys`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$schema_flattened_keys` AS select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`statistics`.`TABLE_NAME` AS `table_name`,`information_schema`.`statistics`.`INDEX_NAME` AS `index_name`,max(`information_schema`.`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if(`information_schema`.`statistics`.`SUB_PART` is null,0,1)) AS `subpart_exists`,group_concat(`information_schema`.`statistics`.`COLUMN_NAME` order by `information_schema`.`statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`statistics` where `information_schema`.`statistics`.`INDEX_TYPE` = 'BTREE' and `information_schema`.`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA') group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME`;

-- Dumping structure for view sys.x$schema_index_statistics
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$schema_index_statistics`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$schema_tables_with_full_table_scans
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0 order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc;

-- Dumping structure for view sys.x$schema_table_lock_waits
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE` and `g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA` and `g`.`OBJECT_NAME` = `p`.`OBJECT_NAME` and `g`.`LOCK_STATUS` = 'GRANTED' and `p`.`LOCK_STATUS` = 'PENDING')) join `performance_schema`.`threads` `gt` on(`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`)) join `performance_schema`.`threads` `pt` on(`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `gs` on(`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `ps` on(`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`)) where `g`.`OBJECT_TYPE` = 'TABLE';

-- Dumping structure for view sys.x$schema_table_statistics
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$schema_table_statistics`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) order by `pst`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$schema_table_statistics_with_buffer
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,`ibp`.`allocated` - `ibp`.`data` AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema` and `pst`.`OBJECT_NAME` = `ibp`.`object_name`)) order by `pst`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$session
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$session`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY INVOKER VIEW `sys`.`x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `sys`.`x$processlist` where `x$processlist`.`conn_id` is not null and `x$processlist`.`command` <> 'Daemon';

-- Dumping structure for view sys.x$statements_with_errors_or_warnings
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_errors_or_warnings` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc;

-- Dumping structure for view sys.x$statements_with_full_table_scans
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_full_table_scans` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_sent_avg`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) and `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`  not like 'SHOW%' order by round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$statements_with_runtimes_in_95th_percentile
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_runtimes_in_95th_percentile` AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0 or `stmts`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on(round(`stmts`.`AVG_TIMER_WAIT` / 1000000,0) >= `top_percentile`.`avg_us`)) order by `stmts`.`AVG_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$statements_with_sorting
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$statements_with_sorting`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_sorting` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$statements_with_temp_tables
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statements_with_temp_tables` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_tmp_tables_per_query`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0),0) * 100,0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc;

-- Dumping structure for view sys.x$statement_analysis
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$statement_analysis`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$statement_analysis` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$user_summary
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$user_summary`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary` AS select if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull(sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`)) left join `sys`.`x$user_summary_by_file_io` `io` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`)) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`)) group by if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc;

-- Dumping structure for view sys.x$user_summary_by_file_io
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Dumping structure for view sys.x$user_summary_by_file_io_type
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$user_summary_by_stages
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$user_summary_by_stages`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where `performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$user_summary_by_statement_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc;

-- Dumping structure for view sys.x$user_summary_by_statement_type
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$user_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$waits_by_host_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$waits_by_host_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$waits_by_user_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$waits_by_user_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$waits_global_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$waits_global_by_latency`;
CREATE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW `sys`.`x$waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc;

-- Dumping structure for view sys.x$wait_classes_global_by_avg_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) desc;

-- Dumping structure for view sys.x$wait_classes_global_by_latency
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW `sys`.`x$wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
