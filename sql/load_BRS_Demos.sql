/*
 *
 * This file contains the SQL commands to load data into Vertica 
 *  for the Baseball Statistics Boston Red Sox (BRS) Demos for 
 *  Vertica In-Database Data Analytics and Machine Learning
 *
*/

-- Input table

DROP TABLE IF EXISTS BRS_2021_input;

CREATE TABLE BRS_2021_input (Key int, 
                             Game_Date date, 
                             Game_Result int,
                             At_Bats int,
                             Runs_Scored int,
                             Hits int,
                             Runs_Batted_In int,
                             Walks int,
                             Strikeouts int,
                             Batting_Average float,
                             On_Base_Percentage float,
                             Slugging_Percentage float,
                             OnBase_Plus_Slugging float);

INSERT INTO BRS_2021_input VALUES(1, '04-02-2021', '0', '29', '0', '2', '0', '2', '8', '.069', '.129', '.103', '.232');
INSERT INTO BRS_2021_input VALUES(2, '04-03-2021', '0', '33', '2', '7', '2', '2', '8', '.212', '.270', '.242', '.513');
INSERT INTO BRS_2021_input VALUES(3, '04-04-2021', '0', '32', '3', '6', '3', '2', '8', '.188', '.229', '.344', '.572');
INSERT INTO BRS_2021_input VALUES(4, '04-05-2021', '1', '36', '11', '16', '10', '3', '8', '.444', '.463', '.639', '1.102');
INSERT INTO BRS_2021_input VALUES(5, '04-06-2021', '1', '44', '6', '10', '5', '3', '15', '.227', '.292', '.432', '.723');
INSERT INTO BRS_2021_input VALUES(6, '04-07-2021', '1', '35', '9', '13', '7', '1', '4', '.371', '.405', '.514', '.920');
INSERT INTO BRS_2021_input VALUES(7, '04-08-2021', '1', '38', '7', '12', '7', '3', '10', '.316', '.381', '.605', '.986');
INSERT INTO BRS_2021_input VALUES(8, '04-10-2021', '1', '38', '6', '10', '4', '4', '6', '.263', '.333', '.395', '.728');
INSERT INTO BRS_2021_input VALUES(9, '04-11-2021', '1', '44', '14', '17', '13', '3', '11', '.386', '.460', '.841', '1.301');
INSERT INTO BRS_2021_input VALUES(10, '04-13-2021', '1', '32', '4', '7', '4', '2', '5', '.219', '.265', '.500', '.765');
INSERT INTO BRS_2021_input VALUES(11, '04-14-2021', '1', '32', '3', '11', '2', '3', '7', '.344', '.400', '.438', '.838');
INSERT INTO BRS_2021_input VALUES(12, '04-14-2021', '1', '27', '7', '8', '6', '5', '11', '.296', '.406', '.444', '.851');
INSERT INTO BRS_2021_input VALUES(13, '04-15-2021', '0', '30', '3', '4', '3', '4', '10', '.133', '.257', '.200', '.457');
INSERT INTO BRS_2021_input VALUES(14, '04-17-2021', '1', '34', '7', '13', '7', '6', '11', '.382', '.452', '.559', '1.011');
INSERT INTO BRS_2021_input VALUES(15, '04-18-2021', '0', '26', '2', '8', '2', '0', '3', '.308', '.308', '.462', '.769');
INSERT INTO BRS_2021_input VALUES(16, '04-18-2021', '0', '25', '1', '4', '1', '1', '8', '.160', '.192', '.200', '.392');
INSERT INTO BRS_2021_input VALUES(17, '04-19-2021', '1', '38', '11', '16', '9', '6', '8', '.421', '.500', '.684', '1.184');
INSERT INTO BRS_2021_input VALUES(18, '04-20-2021', '1', '33', '4', '9', '4', '0', '5', '.273', '.273', '.515', '.788');
INSERT INTO BRS_2021_input VALUES(19, '04-21-2021', '0', '36', '3', '10', '3', '3', '10', '.278', '.333', '.500', '.833');
INSERT INTO BRS_2021_input VALUES(20, '04-22-2021', '0', '38', '3', '8', '2', '2', '11', '.211', '.268', '.395', '.663');
INSERT INTO BRS_2021_input VALUES(21, '04-23-2021', '1', '35', '6', '11', '4', '3', '7', '.314', '.368', '.486', '.854');
INSERT INTO BRS_2021_input VALUES(22, '04-24-2021', '0', '31', '2', '6', '2', '1', '9', '.194', '.242', '.290', '.533');
INSERT INTO BRS_2021_input VALUES(23, '04-25-2021', '1', '26', '5', '5', '5', '7', '6', '.192', '.382', '.308', '.690');
INSERT INTO BRS_2021_input VALUES(24, '04-27-2021', '1', '29', '2', '5', '2', '2', '8', '.172', '.226', '.345', '.571');
INSERT INTO BRS_2021_input VALUES(25, '04-28-2021', '1', '30', '1', '4', '1', '1', '15', '.133', '.161', '.233', '.395');
INSERT INTO BRS_2021_input VALUES(26, '04-29-2021', '0', '30', '1', '3', '1', '3', '6', '.100', '.182', '.167', '.348');
INSERT INTO BRS_2021_input VALUES(27, '04-30-2021', '1', '34', '6', '6', '6', '3', '6', '.176', '.263', '.529', '.793');
INSERT INTO BRS_2021_input VALUES(28, '05-01-2021', '0', '38', '6', '12', '6', '4', '12', '.316', '.372', '.447', '.819');
INSERT INTO BRS_2021_input VALUES(29, '05-02-2021', '0', '32', '3', '9', '3', '1', '7', '.281', '.324', '.438', '.761');
INSERT INTO BRS_2021_input VALUES(30, '05-04-2021', '1', '38', '11', '14', '10', '3', '6', '.368', '.415', '.737', '1.151');
INSERT INTO BRS_2021_input VALUES(31, '05-05-2021', '0', '39', '5', '9', '5', '6', '8', '.231', '.348', '.333', '.681');
INSERT INTO BRS_2021_input VALUES(32, '05-06-2021', '1', '43', '12', '16', '11', '3', '8', '.372', '.438', '.465', '.903');
INSERT INTO BRS_2021_input VALUES(33, '05-07-2021', '1', '35', '6', '7', '6', '3', '6', '.200', '.282', '.371', '.653');
INSERT INTO BRS_2021_input VALUES(34, '05-08-2021', '1', '42', '11', '14', '10', '5', '11', '.333', '.404', '.500', '.904');
INSERT INTO BRS_2021_input VALUES(35, '05-09-2021', '1', '35', '4', '8', '4', '3', '7', '.229', '.289', '.457', '.747');
INSERT INTO BRS_2021_input VALUES(36, '05-10-2021', '0', '30', '1', '4', '1', '0', '11', '.133', '.156', '.200', '.356');
INSERT INTO BRS_2021_input VALUES(37, '05-11-2021', '0', '30', '2', '4', '2', '2', '11', '.133', '.182', '.233', '.415');
INSERT INTO BRS_2021_input VALUES(38, '05-12-2021', '0', '32', '1', '5', '1', '4', '10', '.156', '.250', '.281', '.531');
INSERT INTO BRS_2021_input VALUES(39, '05-13-2021', '1', '35', '8', '13', '6', '3', '6', '.371', '.421', '.629', '1.050');
INSERT INTO BRS_2021_input VALUES(40, '05-14-2021', '1', '31', '4', '9', '4', '2', '9', '.290', '.333', '.484', '.817');
INSERT INTO BRS_2021_input VALUES(41, '05-15-2021', '1', '35', '9', '12', '9', '2', '4', '.343', '.378', '.743', '1.121');
INSERT INTO BRS_2021_input VALUES(42, '05-16-2021', '0', '35', '5', '9', '5', '2', '14', '.257', '.297', '.486', '.783');
INSERT INTO BRS_2021_input VALUES(43, '05-18-2021', '0', '33', '0', '5', '0', '2', '11', '.152', '.200', '.182', '.382');
INSERT INTO BRS_2021_input VALUES(44, '05-19-2021', '1', '39', '7', '13', '7', '0', '11', '.333', '.333', '.744', '1.077');
INSERT INTO BRS_2021_input VALUES(45, '05-20-2021', '1', '39', '8', '14', '8', '3', '8', '.359', '.405', '.538', '.943');
INSERT INTO BRS_2021_input VALUES(46, '05-21-2021', '1', '41', '11', '13', '10', '2', '17', '.317', '.349', '.561', '.910');
INSERT INTO BRS_2021_input VALUES(47, '05-22-2021', '1', '33', '4', '7', '4', '5', '11', '.212', '.325', '.424', '.749');
INSERT INTO BRS_2021_input VALUES(48, '05-23-2021', '0', '31', '2', '4', '2', '2', '12', '.129', '.206', '.323', '.528');
INSERT INTO BRS_2021_input VALUES(49, '05-25-2021', '0', '29', '1', '4', '1', '3', '12', '.138', '.242', '.207', '.449');
INSERT INTO BRS_2021_input VALUES(50, '05-26-2021', '1', '32', '9', '7', '9', '3', '7', '.219', '.278', '.469', '.747');
INSERT INTO BRS_2021_input VALUES(51, '05-28-2021', '1', '21', '5', '5', '5', '2', '6', '.238', '.304', '.524', '.828');
INSERT INTO BRS_2021_input VALUES(52, '05-29-2021', '1', '35', '3', '12', '3', '0', '6', '.343', '.343', '.486', '.829');
INSERT INTO BRS_2021_input VALUES(53, '05-31-2021', '0', '32', '2', '5', '2', '1', '12', '.156', '.182', '.375', '.557');
INSERT INTO BRS_2021_input VALUES(54, '06-01-2021', '0', '32', '1', '5', '1', '1', '9', '.156', '.182', '.188', '.369');
INSERT INTO BRS_2021_input VALUES(55, '06-02-2021', '0', '34', '1', '7', '1', '2', '11', '.206', '.250', '.206', '.456');
INSERT INTO BRS_2021_input VALUES(56, '06-03-2021', '1', '34', '5', '8', '5', '7', '12', '.235', '.366', '.441', '.807');
INSERT INTO BRS_2021_input VALUES(57, '06-04-2021', '1', '36', '5', '9', '5', '0', '10', '.250', '.250', '.417', '.667');
INSERT INTO BRS_2021_input VALUES(58, '06-05-2021', '1', '38', '7', '13', '7', '2', '7', '.342', '.375', '.553', '.928');
INSERT INTO BRS_2021_input VALUES(59, '06-06-2021', '1', '34', '6', '6', '6', '4', '6', '.176', '.256', '.382', '.639');
INSERT INTO BRS_2021_input VALUES(60, '06-07-2021', '1', '33', '5', '10', '3', '3', '6', '.303', '.361', '.364', '.725');
INSERT INTO BRS_2021_input VALUES(61, '06-08-2021', '0', '33', '1', '6', '1', '1', '12', '.182', '.250', '.212', '.462');
INSERT INTO BRS_2021_input VALUES(62, '06-09-2021', '0', '30', '3', '4', '3', '1', '9', '.133', '.156', '.267', '.423');
INSERT INTO BRS_2021_input VALUES(63, '06-10-2021', '1', '38', '12', '14', '12', '4', '3', '.368', '.444', '.632', '1.076');
INSERT INTO BRS_2021_input VALUES(64, '06-11-2021', '1', '33', '6', '8', '5', '3', '9', '.242', '.342', '.455', '.797');
INSERT INTO BRS_2021_input VALUES(65, '06-12-2021', '0', '31', '2', '5', '2', '3', '13', '.161', '.278', '.290', '.568');
INSERT INTO BRS_2021_input VALUES(66, '06-13-2021', '0', '32', '4', '6', '4', '4', '12', '.188', '.278', '.406', '.684');
INSERT INTO BRS_2021_input VALUES(67, '06-14-2021', '1', '31', '2', '7', '2', '1', '7', '.226', '.250', '.258', '.508');
INSERT INTO BRS_2021_input VALUES(68, '06-15-2021', '1', '39', '10', '14', '10', '2', '11', '.359', '.390', '.744', '1.134');
INSERT INTO BRS_2021_input VALUES(69, '06-16-2021', '1', '41', '10', '14', '10', '3', '10', '.341', '.386', '.610', '.996');
INSERT INTO BRS_2021_input VALUES(70, '06-18-2021', '0', '36', '3', '11', '3', '2', '11', '.306', '.342', '.417', '.759');
INSERT INTO BRS_2021_input VALUES(71, '06-19-2021', '1', '34', '7', '8', '7', '3', '5', '.235', '.316', '.500', '.816');
INSERT INTO BRS_2021_input VALUES(72, '06-20-2021', '0', '37', '3', '11', '3', '3', '8', '.297', '.350', '.541', '.891');
INSERT INTO BRS_2021_input VALUES(73, '06-22-2021', '1', '39', '9', '10', '7', '3', '11', '.256', '.311', '.410', '.721');
INSERT INTO BRS_2021_input VALUES(74, '06-23-2021', '0', '32', '2', '6', '2', '6', '12', '.188', '.333', '.250', '.583');
INSERT INTO BRS_2021_input VALUES(75, '06-24-2021', '0', '29', '0', '4', '0', '5', '10', '.138', '.265', '.172', '.437');
INSERT INTO BRS_2021_input VALUES(76, '06-25-2021', '1', '32', '5', '7', '5', '4', '10', '.219', '.297', '.281', '.579');
INSERT INTO BRS_2021_input VALUES(77, '06-26-2021', '1', '30', '4', '10', '4', '2', '6', '.333', '.343', '.400', '.743');
INSERT INTO BRS_2021_input VALUES(78, '06-27-2021', '1', '35', '9', '13', '9', '2', '7', '.371', '.410', '.800', '1.210');
INSERT INTO BRS_2021_input VALUES(79, '06-28-2021', '1', '30', '6', '9', '6', '4', '6', '.300', '.382', '.733', '1.116');
INSERT INTO BRS_2021_input VALUES(80, '06-29-2021', '1', '30', '7', '12', '7', '7', '4', '.400', '.500', '.433', '.933');
INSERT INTO BRS_2021_input VALUES(81, '06-30-2021', '1', '32', '6', '8', '6', '2', '3', '.250', '.314', '.500', '.814');

-- Profile table

DROP TABLE IF EXISTS BRS_2021_profile;

CREATE TABLE BRS_2021_profile (Column_Name varchar(25), 
                               value_count int,
                               unique_count int,
                               unique_percent float,
                               null_count int,
                               null_percent float,
                               min_value varchar(50),
                               max_value varchar(50),
                               mean_value varchar(50),
                               median_value varchar(50),
                               stdev_value varchar(50),
                               most_common_value varchar(50),
                               least_common_value varchar(50),
                               min_length int,
                               max_length int,
                               format_count int,
                               most_common_format varchar(50),
                               least_common_format varchar(50),
                               pattern_count int,
                               most_common_pattern varchar(50),
                               least_common_pattern varchar(50),
                               ML_datatype varchar(15),
                               is_null boolean,
                               is_unique boolean,
                               is_constant boolean);

INSERT INTO BRS_2021_profile VALUES('Game_Date', 81, 79, 97.53, 0, 0.0, '04-02-2021', '06-30-2021', 'N/A', 'N/A', 'N/A', '04-14-2021 (2)', '06-30-2021 (1)', 10, 10, 1, 'nn-nn-nnnn (81)', 'nn-nn-nnnn (81)', 1, 'date (81)', 'date (81)', 'Categorical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('Game_Result', 81, 2, 2.47, 0, 0.0, 0, 1, 0.6172839506172839, 1, 0.4890782461571947, '1 (50)', '0 (31)', 1, 1, 1, 'n (81)', 'n (81)', 1, 'integer (81)', 'integer (81)', 'Label', False, False, False);
INSERT INTO BRS_2021_profile VALUES('At_Bats', 81, 19, 23.46, 0, 0.0, 21, 44, 33.76543209876543, 33, 4.325134694255983, '32 (12)', '37 (1)', 2, 2, 1, 'nn (81)', 'nn (81)', 1, 'integer (81)', 'integer (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('Runs_Scored', 81, 14, 17.28, 0, 0.0, 0, 14, 5.061728395061729, 5, 3.3553899885570146, '2 (10)', '14 (1)', 1, 2, 2, 'n (71)', 'nn (10)', 1, 'integer (81)', 'integer (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('Hits', 81, 15, 18.52, 0, 0.0, 2, 17, 8.765432098765432, 8, 3.668349782048706, '4 (9)', '3 (1)', 1, 2, 2, 'n (49)', 'nn (32)', 1, 'integer (81)', 'integer (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('Runs_Batted_In', 81, 14, 17.28, 0, 0.0, 0, 13, 4.753086419753086, 4, 3.1206203878296814, '2 (12)', '12 (1)', 1, 2, 2, 'n (72)', 'nn (9)', 1, 'integer (81)', 'integer (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('Walks', 81, 8, 9.88, 0, 0.0, 0, 7, 2.7777777777777777, 3, 1.6583123951777, '3 (24)', '7 (3)', 1, 1, 1, 'n (81)', 'n (81)', 1, 'integer (81)', 'integer (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('Strikeouts', 81, 14, 17.28, 0, 0.0, 3, 17, 8.728395061728396, 8, 2.9538633417907656, '11 (14)', '13 (1)', 1, 2, 2, 'n (46)', 'nn (35)', 1, 'integer (81)', 'integer (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('Batting_Average', 81, 58, 71.6, 0, 0.0, 0.069, 0.444, 0.2537283950617284, 0.242, 0.086980315638896, '.133 (5)', '.400 (1)', 4, 4, 1, '.nnn (81)', '.nnn (81)', 1, 'float (81)', 'float (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('On_Base_Percentage', 81, 59, 72.84, 0, 0.0, 0.129, 0.5, 0.3144814814814815, 0.316, 0.08493925934323761, '.333 (5)', '.314 (1)', 4, 4, 1, '.nnn (81)', '.nnn (81)', 1, 'float (81)', 'float (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('Slugging_Percentage', 81, 66, 81.48, 0, 0.0, 0.103, 0.841, 0.43048148148148146, 0.438, 0.16618446912325405, '.500 (5)', '.433 (1)', 4, 4, 1, '.nnn (81)', '.nnn (81)', 1, 'float (81)', 'float (81)', 'Numerical', False, False, False);
INSERT INTO BRS_2021_profile VALUES('OnBase_Plus_Slugging', 81, 80, 98.77, 0, 0.0, 0.232, 1.301, 0.7449876543209877, 0.759, 0.23658743065868695, '.747 (2)', '.814 (1)', 4, 5, 2, '.nnn (69)', 'n.nnn (12)', 1, 'float (81)', 'float (81)', 'Numerical', False, False, False);

