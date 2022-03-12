import std;

void main() {
    int V, A, B, C;
    readf("%d %d %d %d\n", V, A, B, C);

    auto list = [A, B, C];
    int idx;
    while (V > 0) {
        if (V < list[idx]) {
            break;
        }

        V -= list[idx];
        idx = (idx + 1) % 3;
    }

    string res = "FMT";
    res[idx].writeln;
}