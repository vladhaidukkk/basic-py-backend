import asyncio
import os

from tornado.web import Application, RequestHandler


class MainHandler(RequestHandler):
    def get(self) -> None:
        self.write("Hello, World!")


async def main() -> None:
    app = Application(
        [(r"/", MainHandler)],
    )

    host = os.environ["HOST"]
    port = int(os.environ["PORT"])
    app.listen(address=host, port=port)

    await asyncio.Event().wait()


if __name__ == "__main__":
    asyncio.run(main())
