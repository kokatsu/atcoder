import std;

void main() {
    int n, m;
    readf("%d\n%d\n", n, m);

    int l = n * 2;
    auto res = iota(1, l+1).array;
    auto buf = new int[](l);

    foreach (_; 0 .. m) {
        int k;
        readf("%d\n", k);

        if (k == 0) {
            foreach (i; 0 .. n) {
                buf[i*2] = res[i];
                buf[i*2+1] = res[i+n];
            }
            res[] = buf[];
        }
        else {
            buf[0..k] = res[0..k];
            res[0..l-k] = res[k..l].dup;
            res[l-k..l] = buf[0..k];
        }
    }

    writefln("%(%s\n%)", res);
}