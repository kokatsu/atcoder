import std;

void main() {
    string S, T;
    readf("%s %s\n", S, T);

    int floor(string str) {
        if (str[0] == 'B') {
            return -(str[1] - '0');
        }
        return str[0] - '1';
    }

    int res = abs(floor(S) - floor(T));
    res.writeln;
}
