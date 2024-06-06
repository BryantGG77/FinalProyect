import React, { useState } from 'react';
import { Form, Button } from 'react-bootstrap';
import './Login.css'
import PrimaryButton from '../../components/PrimaryButton';

export default function Login() {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();

        const response = await fetch('http://localhost:8000/users/create', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ name, email, password })
        });

        const data = await response.json();
        console.log(data);

        setName('');
        setEmail('');
        setPassword('');
    };

    return (
        <>
            <div className='container-login'>
                <div className='container-form-login'>
                    <Form className='form-login p-5' onSubmit={handleSubmit}>
                        <h2 className='title-login text-center'>Login</h2>
                        <Form.Group className="mb-3" controlId="formBasicName">
                            <Form.Label className='label-form-login'>Name</Form.Label>
                            <Form.Control className='input-login'
                                type="text"
                                placeholder="📝 Enter name"
                                value={name}
                                onChange={(e) => setName(e.target.value)}
                            />
                        </Form.Group>
                        <Form.Group className="mb-3" controlId="formBasicEmail">
                            <Form.Label className='label-form-login'>Email address</Form.Label>
                            <Form.Control className='input-login'
                                type="email"
                                placeholder="📩 Enter email"
                                value={email}
                                onChange={(e) => setEmail(e.target.value)}
                            />
                            <Form.Text className="text-lite">
                                We`ll never share your email with anyone else.
                            </Form.Text>
                        </Form.Group>
                        <Form.Group className="mb-3" controlId="formBasicPassword">
                            <Form.Label className='label-form-login'>Password</Form.Label>
                            <Form.Control className='input-login'
                                type="password"
                                placeholder="🔒 Password"
                                value={password}
                                onChange={(e) => setPassword(e.target.value)}
                            />
                        </Form.Group>
                        <Button className='btn-login' variant="primary" type="submit">
                            Submit
                        </Button>
                    </Form>
                    <a className='Linked' href="/"> <PrimaryButton label={'Back'} alto={48} ancho={157} /></a>
                </div>
            </div>
        </>
    )
}

