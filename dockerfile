# 1. Gunakan base image Python yang ringan
FROM python:3.9-slim

# 2. Tentukan folder kerja di dalam container
WORKDIR /app

# 3. Copy file requirements dulu (agar caching efisien)
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy sisa kode aplikasi (app.py, dll)
COPY . .

# 6. Buka port 5000 (hanya dokumentasi, tapi penting)
EXPOSE 5000

# 7. Perintah untuk menjalankan aplikasi
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
