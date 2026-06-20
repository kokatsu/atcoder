import std;

void main() {
    int N;
    readfln("%d", N);

    int[] H = new int[](N), L = new int[](N);
    foreach (i; 0 .. N) {
        readfln("%d %d", H[i], L[i]);
    }

    auto rbt = redBlackTree!("a > b", true)(H);
    int[] M = new int[](N);
    foreach (i, h; H) {
        M[i] = rbt.front;
        rbt.removeKey(h);
    }

    int Q;
    readfln("%d", Q);

    int[] T = readln.chomp.split.to!(int[]);

    auto S = L.assumeSorted;
    int[] R = new int[](Q);
    foreach (i, t; T) {
        auto lb = S.lowerBound(t + 1);
        R[i] = M[lb.length];
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
