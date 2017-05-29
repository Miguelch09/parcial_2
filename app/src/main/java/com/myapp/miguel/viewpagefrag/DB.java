package com.myapp.miguel.viewpagefrag;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class DB extends SQLiteOpenHelper {

    public DB(Context context, String nombre, SQLiteDatabase.CursorFactory factory, int version) {

        super(context, nombre, factory, version);

    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        //aquí creamos la tabla de usuario (dni, nombre, ciudad, numero)
        db.execSQL("create table flora(CoHoja text, FormHoja text, SecrecionHoja text, TamañoTallo integer,Area text, clima text)");
        db.execSQL("create table fauna (TcubiertaC text, CcubiertaC text, CantidadPatas integer, FormaPatas text,tamaño text, clima text)");
        db.execSQL("create table usuario (Nombre text, Contraseña text)");
        db.execSQL("create table ()");

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int version1, int version2) {
        db.execSQL("drop table if exists usuario");
        db.execSQL("create table flora(CoHoja text, FormHoja text, SecrecionHoja text, TamañoTallo integer,Area text, clima text)");
        db.execSQL("create table fauna (TcubiertaC text, CcubiertaC text, CantidadPatas integer, FormaPatas text,tamaño text, clima text)");
    }
}
