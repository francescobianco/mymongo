
db.createUser(
    {
        user: "root",
        pwd: "password",
        roles: [
            {
                role: "readWrite",
                db: "myFirstDatabase"
            }
        ]
    }
);

db = db.getSiblingDB('myFirstDatabase');

db.createCollection('myFirstCollection');

db.myFirstCollection.insertOne({ name: 'John Doe' });