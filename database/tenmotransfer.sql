-- Get All Transfers

SELECT t.*, ts.transfer_status_desc, tt.transfer_type_desc
FROM transfers t
JOIN transfer_statuses ts ON ts.transfer_status_id = t.transfer_status_id
JOIN transfer_types tt ON tt.transfer_type_id = t.transfer_type_id
ORDER BY transfer_id;


SELECT transfer_id, userFrom.username AS user_from, userTo.username AS user_to, amount
FROM transfers
JOIN accounts a ON transfers.account_from = a.account_id
JOIN accounts b ON transfers.account_to = b.account_id
JOIN users userFrom ON a.user_id = userFrom.user_id
JOIN users userTo ON b.user_id = userTo.user_id
WHERE a.user_id = 1;

SELECT transfer_id, userFrom.username AS user_from, amount
FROM transfers
JOIN accounts ON transfers.account_from = accounts.account_id
JOIN users userFrom ON accounts.user_id = userFrom.user_id
WHERE accounts.user_id = 1;

SELECT transfer_id, userTo.username AS user_to, amount
FROM transfers
JOIN accounts ON transfers.account_to = accounts.account_id
JOIN users userTo ON accounts.user_id = userTo.user_id
WHERE accounts.user_id = 2;

SELECT transfer_id
FROM transfers
JOIN accounts ON transfers

-- Get Transfer By ID

SELECT transfers.*, userFrom.username AS user_from, userTo.username AS user_to, amount, tt.transfer_type_desc, ts.transfer_status_desc
FROM transfers
JOIN accounts a ON transfers.account_from = a.account_id
JOIN accounts b ON transfers.account_to = b.account_id
JOIN users userFrom ON a.user_id = userFrom.user_id
JOIN users userTo ON b.user_id = userTo.user_id
JOIN transfer_statuses ts ON transfers.transfer_status_id = ts.transfer_status_id
JOIN transfer_types tt ON transfers.transfer_type_id = tt.transfer_type_id
WHERE transfers.transfer_id = (SELECT MAX(transfer_id) FROM transfers WHERE transfer_id IS NOT NULL);

-- Get Pending Requests

SELECT transfer_id, userFrom.username AS user_from, userTo.username AS user_to, amount, tt.transfer_type_desc, ts.transfer_status_desc
FROM transfers
JOIN accounts a ON transfers.account_from = a.account_id
JOIN accounts b ON transfers.account_to = b.account_id
JOIN users userFrom ON a.user_id = userFrom.user_id
JOIN users userTo ON b.user_id = userTo.user_id
JOIN transfer_statuses ts ON transfers.transfer_status_id = ts.transfer_status_id
JOIN transfer_types tt ON transfers.transfer_type_id = tt.transfer_type_id
WHERE transfer_status_id = ?;

INSERT INTO transfers (transfer_type_id, transfer_status_id, account_from, account_to, amount)
VALUES (1, 1, 1, 3, 100.00);

UPDATE accounts SET balance = ((SELECT balance FROM accounts WHERE user_id = 3) - 100.00) WHERE user_id = 3;

SELECT t.transfer_id, t.account_from, t.account_to, userFrom.username AS user_from, userTo.username AS user_to
FROM transfers t
JOIN users userFrom ON t.account_from = userFrom.user_id
JOIN users userTo ON t.account_to = userTo.user_id
JOIN transfer_statuses ts ON t.transfer_status_id = ts.transfer_status_id
JOIN transfer_types tt ON t.transfer_type_id = tt.transfer_type_id
WHERE userFrom.user_id = 1 OR userTo.user_id = 1;

SELECT transfers.*, user1.username AS userFrom, user2.username AS userTo, ts.transfer_status_desc, tt.transfer_type_desc
FROM transfers
JOIN accounts a ON transfers.account_from = a.account_id
JOIN accounts b ON transfers.account_to = b.account_id
JOIN users user1 ON a.user_id = users.user_id
JOIN users user1 ON b.user_id = users.user_id
JOIN transfer_statuses ts ON transfers.transfer_status_id = ts.transfer_status_id
JOIN transfer_types tt ON transfers.transfer_type_id = tt.transfer_type_id
WHERE transfers.transfer_id = max;
