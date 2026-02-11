import std;

void main() {
    int N;
    readfln("%d", N);

    string[] w = readln.chomp[0 .. $ - 1].split;

    string[] T = ["TAKAHASHIKUN", "Takahashikun", "takahashikun"];
    int res;
    foreach (v; w) {
        if (T.canFind(v)) {
            ++res;
        }
    }

    res.writeln;
}
