import std;

void main() {
    int N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    --X, --Y;

    auto cnts = new int[](N-1);
    foreach (i; 0 .. N-1) {
        foreach (j; i+1 .. N) {
            int k = min(j-i-1, abs(i-X)+abs(j-Y));
            ++cnts[k];
        }
    }

    foreach (c; cnts) c.writeln;
}