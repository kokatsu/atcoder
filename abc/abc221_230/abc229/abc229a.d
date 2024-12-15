import std;

void main() {
    string S1 = readln.chomp;
    string S2 = readln.chomp;

    bool isOK;
    if (S1[0] == '#' && S1[1] == '#') {
        isOK = true;
    }
    if (S2[0] == '#' && S2[1] == '#') {
        isOK = true;
    }
    if (S1[0] == '#' && S2[0] == '#') {
        isOK = true;
    }
    if (S1[1] == '#' && S2[1] == '#') {
        isOK = true;
    }

    if (isOK) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}
