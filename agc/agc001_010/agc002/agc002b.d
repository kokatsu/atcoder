import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto cnts = new int[](N + 1);
    cnts[1 .. N + 1] = 1;

    auto boxes = new bool[](N + 1);
    boxes[1] = true;

    foreach (_; 0 .. M) {
        int x, y;
        readf("%d %d\n", x, y);

        --cnts[x], ++cnts[y];
        if (boxes[x])
            boxes[y] = true;
        if (cnts[x] < 1)
            boxes[x] = false;
    }

    auto res = boxes.count(true);
    res.writeln;
}
