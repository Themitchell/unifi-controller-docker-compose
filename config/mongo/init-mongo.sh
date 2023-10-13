set - e

mongo << EOF
db.getSiblingDB('$MONGO_DBNAME').createUser({
  user: '$MONGO_USER',
  pwd: '$MONGO_PASS',
  roles: [{
    role: "dbOwner",
    db: '$MONGO_DBNAME'
  }, {
    role: "dbOwner",
    db: '${MONGO_DBNAME}_stat'
  }]
});
EOF
