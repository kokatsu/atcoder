import std;

enum string T = "atcoder";
enum ulong[dchar] dict = T.zip(T.length.iota).assocArray;

void main() {
    string S;
    readf("%s\n", S);

    ulong[] ord = S.map!(x => dict[x]).array;

    int res;
    foreach (i, x; ord) {
        foreach (y; ord[i + 1 .. $]) {
            if (x > y) {
                ++res;
            }
        }
    }

    res.writeln;
}
