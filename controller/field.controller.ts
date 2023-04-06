/* eslint-disable prettier/prettier */
import { Controller, Post, Body } from '@nestjs/common';
import { FieldService } from '../services/field.service'
import { demo } from '../models/demo.interface'


@Controller('field')
export class FieldController {
    constructor(
        private demoservice: FieldService
    ) { }

    @Post()
    create(@Body() data: demo) {
        return this.demoservice.createbys(data);
    }
}
