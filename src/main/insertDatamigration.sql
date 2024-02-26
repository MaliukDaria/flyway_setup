INSERT INTO user_authority (authority)
values ('TERMINAL_BILLING_CREATE'),
       ('TERMINAL_BILLING_VIEW'),
       ('TERMINAL_FACILITY_CREATE'),
       ('TERMINAL_FACILITY_UPDATE'),
       ('TERMINAL_FACILITY_DELETE'),
       ('TERMINAL_FACILITY_VIEW'),
       ('TERMINAL_GROUP_FACILITY_CREATE'),
       ('TERMINAL_GROUP_FACILITY_UPDATE'),
       ('TERMINAL_GROUP_FACILITY_DELETE'),
       ('TERMINAL_GROUP_FACILITY_VIEW'),
       ('TERMINAL_USED_FACILITY_VIEW'),
       ('TERMINAL_USED_FACILITY_CREATE'),
       ('FATA_ACCOUNT_INCOMING_TRANSACTION_VIEW'),
       ('FATA_MERCHANT_VIEW'),
       ('FATA_SHIPMENT_REPORT_VIEW'),
       ('FATA_WIRING_VIEW'),
       ('FATA_WIRING_CREATE'),
       ('FATA_COMMISSION_BOOK_VIEW'),
       ('FATA_GENERAL_FIN_BOOK_VIEW'),
       ('FATA_MESSAGE_UPDATE'),
       ('FATA_MESSAGE_VIEW'),
       ('FATA_MERCHANT_CREATE'),
       ('TERMINAL_AVAILABLE_FACILITY_CREATE'),
       ('TERMINAL_AVAILABLE_FACILITY_VIEW'),
       ('FATA_MESSAGE_CREATE'),
       ('HEALTH_VIEW'),
       ('INVESTIGATION_VIEW'),
       ('LANGUAGE_ITEM_VIEW'),
       ('LANGUAGE_ITEM_UPDATE'),
       ('REPORT_VIEW');

INSERT INTO user_role_has_user_authority
(role_code, authority)
VALUES('SUPER_ADMIN', 'TERMINAL_BILLING_CREATE'),
      ('SUPER_ADMIN', 'TERMINAL_BILLING_VIEW'),
      ('SUPER_ADMIN', 'TERMINAL_FACILITY_CREATE'),
      ('SUPER_ADMIN', 'TERMINAL_FACILITY_UPDATE'),
      ('SUPER_ADMIN', 'TERMINAL_FACILITY_DELETE'),
      ('SUPER_ADMIN', 'TERMINAL_FACILITY_VIEW'),
      ('SUPER_ADMIN', 'TERMINAL_GROUP_FACILITY_CREATE'),
      ('SUPER_ADMIN', 'TERMINAL_GROUP_FACILITY_UPDATE'),
      ('SUPER_ADMIN', 'TERMINAL_GROUP_FACILITY_DELETE'),
      ('SUPER_ADMIN', 'TERMINAL_GROUP_FACILITY_VIEW'),
      ('SUPER_ADMIN', 'TERMINAL_USED_FACILITY_VIEW'),
      ('SUPER_ADMIN', 'TERMINAL_USED_FACILITY_CREATE'),
      ('SUPER_ADMIN', 'FATA_ACCOUNT_INCOMING_TRANSACTION_VIEW'),
      ('SUPER_ADMIN', 'FATA_MERCHANT_VIEW'),
      ('SUPER_ADMIN', 'FATA_SHIPMENT_REPORT_VIEW'),
      ('SUPER_ADMIN', 'FATA_WIRING_VIEW'),
      ('SUPER_ADMIN', 'FATA_WIRING_CREATE'),
      ('SUPER_ADMIN', 'FATA_COMMISSION_BOOK_VIEW'),
      ('SUPER_ADMIN', 'FATA_GENERAL_FIN_BOOK_VIEW'),
      ('SUPER_ADMIN', 'FATA_MESSAGE_UPDATE'),
      ('SUPER_ADMIN', 'FATA_MESSAGE_VIEW'),
      ('SUPER_ADMIN', 'FATA_MERCHANT_CREATE'),
      ('SUPER_ADMIN', 'TERMINAL_AVAILABLE_FACILITY_CREATE'),
      ('SUPER_ADMIN', 'TERMINAL_AVAILABLE_FACILITY_VIEW'),
      ('SUPER_ADMIN', 'FATA_MESSAGE_CREATE'),
      ('SUPER_ADMIN', 'HEALTH_VIEW'),
      ('SUPER_ADMIN', 'INVESTIGATION_VIEW'),
      ('SUPER_ADMIN', 'LANGUAGE_ITEM_VIEW'),
      ('SUPER_ADMIN', 'LANGUAGE_ITEM_UPDATE'),
      ('SUPER_ADMIN', 'REPORT_VIEW');


INSERT INTO background_job (job_name, cron, enabled_flag, id, title)
VALUES ('PIN_TIMEOUT_JOB', '0 * * ? * *', 'N', 15, NULL);

INSERT INTO background_job (job_name, cron, enabled_flag, id, title)
values ('WEB_CABINET_MIGRATION_ACTIONS_BACK', '0 * * ? * *', 'N', 16, NULL);

INSERT INTO background_job
(job_name, cron, enabled_flag, title, id)
VALUES('NEW_LICENSE_FILE_CHECK', '0 */1 * * * *', 'N', 'NEW_LICENSE_FILE_CHECK', 17);

INSERT INTO background_job
(job_name, cron, enabled_flag, title, id)
VALUES('LICENSE_EXPIRATION_EMAIL', '0 0 9 ? * MON,THU', 'N', 'LICENSE_EXPIRATION_EMAIL', 18);

INSERT INTO translate (code, txt, language) VALUES
                                                ('license.expiration.email.text','Dear Sir/Madam

We would like to inform you that your license for transenix is expiring soon:
number of terminals remaining: %s
license due date: %s

To ensure uninterrupted access to the product and its features, we kindly ask you to renew your license before it is fully expired.

To renew your license, please contact our manager. Once you have completed the purchase, you will receive a new license file that will enable you to continue using the product.

If you have any questions or concerns regarding the license renewal process, please contact our customer support team for assistance.

Thank you for your continued use of our product.

Best regards,
Transenix team',
                                                 'ENG'),
                                                ('license.expiration.email.text','Шановний(а) пане/пані

Повідомляємо, що термін дії вашої ліцензії на Transenix скоро закінчується:
кількість терміналів, що залишилися: %s
термін дії ліцензії: %s

Щоб забезпечити безперервний доступ до продукту та його функцій, ми просимо вас поновити ліцензію до того, як поточна ліцензія закінчиться.

Для продовження ліцензії зв`яжіться з нашим менеджером. Після завершення покупки ви отримаєте новий файл ліцензії, який дозволить вам продовжувати використовувати продукт.

Якщо у вас виникли запитання чи сумніви щодо процесу поновлення ліцензії, зверніться за допомогою до нашої служби підтримки клієнтів.

Дякуємо за постійне використання нашого продукту.

З найкращими побажаннями,
Команда Transenix', 'UKR'),
                                                ('license.expiration.email.subject', 'Transenix license expiring', 'ENG'),
                                                ('license.expiration.email.subject', 'Ліцензія Transenix закінчується', 'UKR'),
                                                ('license.expired.email.text','Dear Sir/Madam

We would like to inform you that your license for the transenix has expired:
number of terminals remaining: %s
license due date: %s

To continue using the product, you will need to renew your license as soon as possible. Failure to do so may result in the product no longer functioning properly.

To renew your license, please contact our manager. Once you have completed the purchase, you will receive a new license file that will enable you to continue using the product.

If you have any questions or concerns regarding the license renewal process, please contact our customer support team for assistance.

Thank you for your continued use of our product.

Best regards,
Transenix team', 'ENG'),
                                                ('license.expired.email.text', 'Шановний(а) пане/пані

Повідомляємо, що термін дії вашої ліцензії на transenix закінчився:
кількість терміналів, що залишилися: %s
Термін дії ліцензії: %s

Щоб продовжити використання продукту, вам потрібно якомога швидше оновити ліцензію. Якщо цього не зробити, продукт перестане працювати належним чином.

Для продовження ліцензії зв`яжіться з нашим менеджером. Після завершення покупки ви отримаєте новий файл ліцензії, який дозволить вам продовжувати використовувати продукт.

Якщо у вас виникли запитання чи сумніви щодо процесу поновлення ліцензії, зверніться за допомогою до нашої служби підтримки клієнтів.

Дякуємо за постійне використання нашого продукту.

З найкращими побажаннями,
Команда Transenix', 'UKR'),
                                                ('license.expired.email.subject', 'Transenix license is expired', 'ENG'),
                                                ('license.expired.email.subject', 'Ліцензія Transenix закінчилась', 'UKR'),
                                                ('password.restore.email.text', 'Please use this one time password %s', 'ENG'),
                                                ('password.restore.email.subject', 'Password restore', 'ENG'),
                                                ('activation.code.subject', 'code actyvatsii', 'UKR'),
                                                ('activation.code.text', '%s dlia actyvatsii servisu', 'UKR'),
                                                ('report.terminal.register.subject', 'Report of registered terminals status', 'ENG');



INSERT INTO translate (code, txt, language) VALUES
                                                ('activation.code.email.text', 'Your activation code %s', 'ENG'),
                                                ('activation.code.email.text', 'Ваш код активації %s', 'UKR'),
                                                ('activation.code.email.subject', 'Код активації', 'UKR'),
                                                ('activation.code.email.subject', 'Activation code', 'ENG');

INSERT INTO translate (code, txt, language) VALUES
                                                ('login.restore.email.text', 'Your login: %s', 'ENG'),
                                                ('login.restore.email.text', 'Ваш логін: %s', 'UKR'),
                                                ('login.restore.email.subject', 'Відновлення логіну', 'UKR'),
                                                ('login.restore.email.subject', 'Login restore', 'ENG');

INSERT INTO background_job (job_name, cron, enabled_flag, id, title)
VALUES ('PASSWORD_EXPIRATION_EMAIL', '0 0 9 ? * *', 'Y', 19, 'PASSWORD_EXPIRATION_EMAIL');

INSERT INTO translate (code, txt, language) VALUES
                                                ('password.expires.email.subject', 'Password expiration notice', 'ENG'),
                                                ('password.expires.email.text', 'Dear %s,

Your password will expire at %s. To maintain access to the Transenix system, please update your password before expiration.

Thank you,
Transenix team
', 'ENG'),
                                                ('password.expires.email.subject', 'Повідомлення про закінчення терміну дії пароля', 'UKR'),
                                                ('password.expires.email.text', 'Шановний(-а) %s

Термін дії вашого пароля закінчиться %s. Щоб зберегти доступ до системи Transenix, оновіть свій пароль до закінчення терміну дії.

Щиро вдячні,
Команда Transenix
', 'UKR'),
                                                ('password.expired.email.subject', 'Password expired notice', 'ENG'),
                                                ('password.expired.email.text', 'Dear %s,

Your password has expired, and you are not able to log in to the Transenix system until it is updated. To regain access, please reset your password immediately.

Please note that you have to complete this update till %s. Afterward, you must contact the system administrator for assistance.

Thank you,
Transenix team

', 'ENG'),
                                                ('password.expired.email.subject', 'Термін дії вашого пароля закінчився', 'UKR'),
                                                ('password.expired.email.text', 'Шановний(-а) %s

Термін дії вашого пароля минув, і ви не можете увійти в систему Transenix, доки пароль не буде оновлено. Щоб відновити доступ, негайно оновіть свій пароль.

Зверніть увагу, що ви маєте зробити це до %s. Після цього необхідно буде звернутися за допомогою до системного адміністратора.

Щиро вдячні,
Команда Transenix

', 'UKR'),
                                                ('password.expired.contact.system.admin.email.subject', 'Password expired', 'ENG'),
                                                ('password.expired.contact.system.admin.email.text', 'Dear %s,

Your password has expired, and you are currently not able to log in to the Transenix system or reset your password independently. Please contact the system administrator for assistance in resetting your password.

Please be advised that timely action is crucial to ensure the security of your account and maintain uninterrupted access to our system. We apologize for any inconvenience this may cause and appreciate your cooperation.

Thank you,
Transenix team

', 'ENG'),
                                                ('password.expired.contact.system.admin.email.subject', 'Термін дії вашого пароля закінчився', 'UKR'),
                                                ('password.expired.contact.system.admin.email.text', 'Шановний(-а) %s

Термін дії вашого пароля минув, і наразі ви не можете самостійно ввійти в систему Transenix або змінити свій пароль. Будь ласка, зверніться до системного адміністратора, щоб отримати допомогу щодо скидання пароля.

Майте на увазі, що своєчасні дії мають вирішальне значення для забезпечення безпеки вашого облікового запису та підтримки безперебійного доступу до нашої системи. Просимо вибачення за можливі незручності та дякуємо за співпрацю.

Щиро вдячні,
Команда Transenix

', 'UKR');

INSERT INTO background_job (job_name, cron, enabled_flag, id, title)
VALUES('PRE_AUTH_REVERSAL', '0 */1 * * * *', 'N', 20, 'AUTO REVERSAL OF PRE-AUTH TRANSACTIONS');

UPDATE general_configuration SET blek='3432633334356236353230646161633664383262396430326239386632313637' WHERE id = 1;
UPDATE general_configuration SET responsible_bank_manager_email = 'aleksandr.nikolenko@a-bank.com.ua' WHERE id = 1;
UPDATE general_configuration SET notification_language = 'UKR' WHERE id = 1;

update user_details set status='ACTIVE' where status is null;
update user_details set password_last_changed_time='2126-07-27 09:58:28.064000' where username='super-admin@cts.com';

