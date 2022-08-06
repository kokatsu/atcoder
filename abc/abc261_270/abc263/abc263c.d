import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto used = new bool[](M+1);
    auto arr = new int[](N);

    void f(int len) {
        if (len >= N) {
            writefln("%(%s %)", arr);
        }
        else {
            foreach (i; 1 .. M+1) {
                if (used[i]) continue;
                if (len > 0 && arr[len-1] > i) continue;

                arr[len] = i;
                used[i] = true;

                f(len+1);

                arr[len] = 0;
                used[i] = false;
            }
        }
    }

    f(0);
}