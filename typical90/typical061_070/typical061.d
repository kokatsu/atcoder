import std;

void main() {
    int Q;
    readf("%d\n", Q);

    auto deck = new int[](Q*2+1);
    int l = Q, r = Q;

    foreach (_; 0 .. Q) {
        int t, x;
        readf("%d %d\n", t, x);

        if (t == 1) deck[l--] = x;
        else if (t == 2) deck[++r] = x;
        else deck[l+x].writeln;
    }
}