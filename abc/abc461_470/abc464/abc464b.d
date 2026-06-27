import std;

void main() {
    int H, W;
    readfln("%d %d", H, W);

    dchar[][] C = new dchar[][](H);
    foreach (i; 0 .. H) {
        readfln("%s", C[i]);
    }

    int T, D = H - 1, L, R = W - 1;

    while (T < H && C[T].all!(c => c == '.')) {
        ++T;
    }

    while (D >= 0 && C[D].all!(c => c == '.')) {
        --D;
    }

    while (L < W && C.all!(row => row[L] == '.')) {
        ++L;
    }

    while (R >= 0 && C.all!(row => row[R] == '.')) {
        --R;
    }

    string res = format("%-(%s\n%)", C[T .. D + 1].map!(row => row[L .. R + 1]));
    res.writeln;
}
