import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto res = new int[](W);
    foreach (_; 0 .. H) {
        string C;
        readf("%s\n", C);

        foreach (i, c; C) {
            if (c == '#') ++res[i];
        }
    }

    writefln("%(%s %)", res);
}