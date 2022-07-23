import dotenv  from 'dotenv';
import "reflect-metadata";

dotenv.config();
import './config/config';
import  Server  from './models/Server';

const server = new Server();
server.listen();


