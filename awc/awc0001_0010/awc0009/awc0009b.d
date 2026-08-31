import std;

void main() {
    long N, S, C;
    readfln("%d %d %d", N, S, C);

    long res, hp = S;
    foreach (_; 0 .. N) {
        long H, P;
        readfln("%d %d", H, P);

        if (hp >= H) {
            hp -= H - P;
        }
        else {
            res += C;
        }
    }

    res.writeln;
}
