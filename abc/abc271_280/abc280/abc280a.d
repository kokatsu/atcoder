import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int res;
    foreach (_; 0 .. H) {
        string S;
        readf("%s\n", S);

        res += S.count('#');
    }

    res.writeln;
}
