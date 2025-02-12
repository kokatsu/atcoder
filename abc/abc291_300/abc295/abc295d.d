import std;

void main() {
    string S;
    readf("%s\n", S);

    long K;
    long[long] dict;
    dict[K] = 1;
    foreach (s; S) {
        long B = 1 << (s - '0');

        if (K & B) {
            K -= B;
        }
        else {
            K += B;
        }

        if (K in dict) {
            ++dict[K];
        }
        else {
            dict[K] = 1;
        }
    }

    long res;
    foreach (val; dict.values) {
        res += val * (val - 1) / 2;
    }

    res.writeln;
}
