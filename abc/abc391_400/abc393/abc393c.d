import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int res;
    bool[string] dict;
    foreach (_; 0 .. M) {
        int u, v;
        readf("%d %d\n", u, v);

        if (u > v) {
            swap(u, v);
        }

        string w = format("%d-%d", u, v);
        if (u == v || w in dict) {
            ++res;
        }
        else {
            dict[w] = true;
        }
    }

    res.writeln;
}
