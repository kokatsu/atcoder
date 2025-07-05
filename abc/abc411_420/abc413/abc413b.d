import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    bool[string] dict;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (i == j) {
                continue;
            }

            string key = S[i] ~ S[j];
            dict[key] = true;
        }
    }

    auto res = dict.length;
    res.writeln;
}
