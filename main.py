def hello_world():
    print("Hello World!")


if __name__ == '__main__':
    hello_world()
    print("nuitka: ", dir(hello_world))
    import sys
    import os
    import ssl

    MODULE_DIR = os.path.join(os.path.dirname(sys.argv[0]), "Libs")
    print("MODULE_DIR: ", MODULE_DIR)
    print("sys: ", sys.path)
    print("sys.argv: ", sys.argv[0])
    sys.path.append(MODULE_DIR)
    import aiohttp

    print("aiohttp: ", aiohttp.__path__, aiohttp.__version__)

    cert_path = ssl.get_default_verify_paths()
    print("cert_path: ", cert_path)
    ssl.SSLContext().load_default_certs()
    ssl.create_default_context()
