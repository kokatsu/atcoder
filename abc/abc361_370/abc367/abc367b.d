import std;

void main() {
    dchar[] X;
    readf("%s\n", X);

    while (X.back == '0') {
        X.popBack;
    }

    if (X.back == '.') {
        X.popBack;
    }

    dchar[] res = X;
    res.writeln;
}
