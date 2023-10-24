# Open AI in Flutter
Open AI adalah library yang dapat digunakan untuk memanfaatkan teknologi AI yang disediakan oleh Open AI. 

## Keuntungan OpenAI
- Gratis
- Mudah dipasang
- Dapat digunakan di berbagai perangkat
- Jumlah parameter 175 miliar

## Cara membuat project flutter dengan OpenAI
1. Membuat API Key dari OpenAI
    => create api key in web "https://platform.openai.com/account/api-keys"
    
2. Buat project flutter
3. Membuat file konfigurasi menggunakan git pada file env.g.dart, dan pastikan sudah membuat file .env, selanjutnya masukan tambahkan ke dalam file .gitignore 
   ```markdown
   OPENAI_API_KEY ='YOUR_OPENAI_API_KEY'
   ```

4. Membaca file konfigurasi 
```markdown
//lib/env.dart
import 'package:envired/envired.dart';
part 'env.g.dart;
@Envied(path: '.env')
abstract class Env {
    @EnviedField(varName: 'OPENAI_API_KEY')
    static const apiKey =_Env.apiKey;
}
```

## Sumber eksplorasi 
1. flutter dengan OpenAI API
2. Dokumentasi API OpenAI
3. Dokumentasi package http
4. Dokumentasi package envied
5. Link Github repository aplikasi