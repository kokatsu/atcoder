import std;

void main() {
    auto S = readln.chomp;

    int Q;
    readf("%d\n", Q);

    dchar g(dchar x, long y) {
        return to!dchar('A'+(x-'A'+y)%3);
    }

    dchar f(long cnt, long pos) {
        if (cnt == 0) return S[pos];
        if (pos == 0) return g(S[pos], cnt);
        return g(f(cnt-1, pos/2), pos%2+1);
    }

    foreach (_; 0 .. Q) {
        long t, k;
        readf("%d %d\n", t, k);

        dchar res = f(t, k-1);
        res.writeln;
    }
}