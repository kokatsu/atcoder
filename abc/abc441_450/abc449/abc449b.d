import std;

void main() {
    int H, W, Q;
    readfln("%d %d %d", H, W, Q);

    int[] A = new int[](Q);
    foreach (ref a; A) {
        int T, X;
        readfln("%d %d", T, X);

        if (T == 1) {
            a = X * W;
            H -= X;
        }
        else {
            a = X * H;
            W -= X;
        }
    }

    string res = format("%(%d\n%)", A);
    res.writeln;
}
