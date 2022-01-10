SELECT UniqueTransactionId, UniqueUserId, ud.Email, up.Name, PackageName, p.TotalPrice, CompletedOrderTransactionDate
FROM transaction t 
JOIN packages p
ON t.UniquePackageid = p.PackageId
JOIN user_profile up
ON t.UniqueUserId = up.UniqueId
JOIN user_data ud
ON up.ProfileUniqueId = ud.UniqueId