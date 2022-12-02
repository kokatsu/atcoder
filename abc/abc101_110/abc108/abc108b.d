import std;

void main() {
    int x1, y1, x2, y2;
    readf("%d %d %d %d\n", x1, y1, x2, y2);

    int dx = x2 - x1, dy = y2 - y1;

    int x3 = x2 - dy, y3 = y2 + dx;
    int x4 = x1 - dy, y4 = y1 + dx;

    writeln(x3, " ", y3, " ", x4, " ", y4);
}