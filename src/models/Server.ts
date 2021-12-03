import express, { Application } from 'express';
import Routes from '../routes';

import cors from 'cors';
import bodyParser from 'body-parser';
import fileUpload from 'express-fileupload';
import path from 'path';

class Server {

    private app: Application;
    private port: String;


    constructor() {
        this.app = express();
        this.port = process.env.PORT;
        this.middlewares();
        this.routes();
        this.config();
    }


    middlewares() {
        //Cors
        this.app.use(cors());


        // parse application/x-www-form-urlencoded
        this.app.use(bodyParser.urlencoded({ extended: false }));
        //body-parser-json
        this.app.use(bodyParser.json());
        //File-upploads
        this.app.use(fileUpload(
            {
                useTempFiles: false,
                tempFileDir: '/tmp/',
                createParentPath: true
            }

        ));
        //carpeta publica
        this.app.use('/api/static', express.static('public'));
    }

    listen() {
        this.app.listen(this.port, () => {
            console.log(`Escuchando en el puerto ${this.port}`);
        });
    }
    //RUTAS
    routes() {
        this.app.use('/api', Routes);
    }

    config() {
        //handlebars
        this.app.set('views', path.join(__dirname, 'views'));
        this.app.set('view engine', 'hbs');
    }

}

export default Server;