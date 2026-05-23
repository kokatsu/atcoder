import std;

void main() {
    int N;
    readfln("%d", N);

    string[] S = readln.chomp.split;

    dchar[] res;
    foreach (s; S) {
        if (s[0] <= 'c') {
            res ~= '2';
        }
        else if (s[0] <= 'f') {
            res ~= '3';
        }
        else if (s[0] <= 'i') {
            res ~= '4';
        }
        else if (s[0] <= 'l') {
            res ~= '5';
        }
        else if (s[0] <= 'o') {
            res ~= '6';
        }
        else if (s[0] <= 's') {
            res ~= '7';
        }
        else if (s[0] <= 'v') {
            res ~= '8';
        }
        else {
            res ~= '9';
        }
    }

    res.writeln;
}
