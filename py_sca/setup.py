import app


@app.operation_decorator("setup.py", "\nexiting...")
def main():
    app.create_logs_dir()
    app.create_images_dir()


if __name__ == "__main__":
    main()
