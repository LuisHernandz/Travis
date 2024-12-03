<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class FtpController extends Controller
{
    public function checkFtpConnection()
{
    try {
        // Intenta listar el contenido del directorio raíz
        $files = Storage::disk('ftp')->files();

        return response()->json([
            'success' => true,
            'message' => 'Conexión FTP exitosa',
            'files' => $files,
        ]);
    } catch (\Exception $e) {
        return response()->json([
            'success' => false,
            'message' => 'Error al conectar al servidor FTP: ' . $e->getMessage(),
        ]);
    }
}
}
