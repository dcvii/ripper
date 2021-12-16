---------------
    Code in app.js:
---------------
var config = {
    ssl: 'optional',
    interruptible: true,
    host: '*******',
    user: '*********',
    password: '********',
    database: '********'
};

try {
    conn = Vertica.connect(config, (err, conn) => {
        if (err) {
            console.log(err);
        } else {
            conn.connect(function (err) {
                if (err) throw err;
                conn.query("select * from *****", function (err, result, fields) {
                    if (err) throw err;
                    console.log(result);
                });
            });
        }
    });
}
catch (error) {
    console.log("Error has been caught --" + error);
}
