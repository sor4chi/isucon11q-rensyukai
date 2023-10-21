ALTER TABLE `isu_condition` ADD `condition_level` VARCHAR(255) NOT NULL DEFAULT 'warning';
UPDATE `isu_condition` SET `condition_level`="info" WHERE ((LENGTH(`condition`) - LENGTH(REPLACE(`condition`, '=true', ''))) / LENGTH('=true')) = 0;
UPDATE `isu_condition` SET `condition_level`="critical" WHERE ((LENGTH(`condition`) - LENGTH(REPLACE(`condition`, '=true', ''))) / LENGTH('=true')) = 3;

