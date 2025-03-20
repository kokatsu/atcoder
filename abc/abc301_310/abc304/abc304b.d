import std;

void main() {
    string N;
    readf("%s\n", N);

    auto len = N.length;

    string res;
    if (len <= 3) {
        res = N;
    }
    else {
        res = N[0 .. 3] ~ "0".replicate(len - 3);
    }

    res.writeln;
}
