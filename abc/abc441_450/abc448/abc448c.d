import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    int[] A = readln.chomp.split.to!(int[]);

    int[] I2N = new int[](N + 1);
    foreach (i, a; A) {
        I2N[i + 1] = a;
    }

    auto rbt = A.redBlackTree!true;

    int[] R = new int[](Q);
    foreach (ref r; R) {
        int K;
        readfln("%d", K);

        int[] B = readln.chomp.split.to!(int[]);

        foreach (b; B) {
            rbt.removeKey(I2N[b]);
        }

        r = rbt.front;

        foreach (b; B) {
            rbt.insert(I2N[b]);
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
