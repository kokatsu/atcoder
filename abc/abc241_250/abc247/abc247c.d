import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] f(int num) {
        if (num == 1) {
            return [1];
        }
        else {
            auto list = f(num-1);
            return list ~ [num] ~ list;
        }
    }

    auto res = f(N);
    writefln("%(%s %)", res);
}